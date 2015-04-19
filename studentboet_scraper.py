import smtplib
import json
import os
import requests
import traceback
import re

from lxml import etree
from dateutil import parser


class StudentBoet:

	def __init__(self):
		self.URL = 'http://studentboet.se/en/%s'
		self.HEADERS = {
			'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36'
		}
		self.LIST = self.URL % 'pages/looking-for-housing'
		self.DETAILS = self.URL % 'housing-ads/%s'
		self.DATABASE = os.path.dirname(os.path.realpath(__file__)) + '/ids.json'

	def read_ids(self):
		with open(self.DATABASE, 'a+') as fd:
			try:
				return json.loads(fd.read())
			except ValueError:
				return []

	def write_ids(self, ids):
		with open(self.DATABASE, 'w+') as fd:
			fd.write(json.dumps(ids))

	def get_full_details(self, apartment_id, details):
		title = details.findall('.//h3')
		result = {
			'url': self.DETAILS % apartment_id,
			'move_in': '',
			'move_out': '',
			'rent': '',
			'type': '',
			'size': '',
			'title': title[1].text if len(title) > 1 else 'Unknown',
		}

		details = details.find('.//div[@id="housing_details"]')
		table = details.findall('.//table/tr')

		for t in table:
			key = t.findtext('.//label')
			if not key:
				continue
			key = key.replace(' ', '_').lower()
			if key not in result:
				continue

			value = t.findtext('.//td')
			if not value:
				continue

			if 'move' in key:
				try:
					result[key.lower()] = parser.parse(value)
				except ValueError:
					continue
			else:
				result[key.lower()] = value.lower()
		return result

	def run(self):
		root = etree.fromstring(requests.get(self.LIST, headers = self.HEADERS).content,
			etree.HTMLParser(encoding='utf-8'))
		ids = self.read_ids()

		good_apartments = []

		for apartment in root.find('.//table[@class="housing_list"]').findall('tr')[1:]:
			apartment_id = int(re.search('\d+', apartment.find('.//a').attrib['href']).group(0))

			if apartment_id not in ids:
				ids.append(apartment_id)
				details = etree.fromstring(requests.get(
					self.DETAILS % apartment_id, headers = self.HEADERS).content, etree.HTMLParser())

				full_details = self.get_full_details(apartment_id, details)

				if full_details['move_in'] != '':
					if full_details['move_in'].month == 8:
						full_details['move_in'] = full_details['move_in'].date().isoformat()
						if full_details['move_out'] != '':
							full_details['move_out'] = full_details['move_out'].date().isoformat()
						good_apartments.append(full_details)
		self.write_ids(ids)
		return good_apartments

	def send_message(self, body):
		sender = os.environ['GMAIL']
		recipient = os.environ['GMAIL']
		subject = 'StudentBoet %s.' % ('failure' if 'Traceback' in body else 'success',)

		body = '' + body + ''

		headers = [
			'From: ' + sender,
			'Subject: ' + subject,
			'To: ' + recipient,
			'MIME-Version: 1.0',
			'Content-Type: text/plain'
		]
		headers = '\r\n'.join(headers)
		 
		session = smtplib.SMTP('smtp.gmail.com', 587)
		session.ehlo()
		session.starttls()
		session.ehlo
		session.login(sender, os.environ['GMAIL_PASSWORD'])
		session.sendmail(sender, recipient, headers + '\r\n\r\n' + body)
		session.quit()

def main():
	S = StudentBoet()
	try:
		apartments = S.run()
		if apartments != []:
			message = '''Url: {url}
Move in: {move_in}
Move out: {move_out}
Rent: {rent}
Type: {type}
Size: {size}
Title: {title}'''
			message = 'Found apartments..\n%s' % '=====\n'.join(message.format(**a) for a in apartments)
			S.send_message(message)
	except:
		S.send_message('\n' + traceback.format_exc())

if __name__ == '__main__':
	main()
