import os
import sys
import requests

import sqlite3
import re
from lxml import etree
from dateutil import parser
from pdb import set_trace

class StudentBoet:

	def __init__(self):
		self.URL = 'http://studentboet.se/en/%s'
		self.HEADERS = {
			'User-Agent': 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36'
		}
		self.LIST = self.URL % 'pages/looking-for-housing'
		self.DETAILS = self.URL % 'housing-ads/%s'
		self.ACCEPTABLE_MONTHS = (7, 8)
		self.DATABASE = os.path.dirname(os.path.realpath(__file__)) + '/ids.json'

	def read_ids(self):
		with open(self.DATABASE, 'a+') as fd:
			try:
				return json.loads(fd.read())
			except ValueError:
				return []

	def write_urls(self, ids):
		with open(self.DATABASE, 'w+') as fd:
			fd.write(json.dumps(ids))

	def get_move_in(self, details):
		return parser.parse(details.find('.//label[@for="housing_ad_post_form_move_in"]')
		.getparent()
		.getparent()
		.findtext('td'))

	def run(self):
		root = etree.fromstring(requests.get(self.LIST, headers = self.HEADERS).content, etree.HTMLParser())
		ids = self.read_ids()

		good_apartments = []

		for apartment in root.find('.//table[@class="housing_list"]').findall('tr')[1:]:
			apartment_id = int(re.search('\d+', apartment.find('.//a').attrib['href']).group(0))

			if apartment_id not in ids:
				ids.append(apartment_id)
				details = etree.fromstring(requests.get(
					self.DETAILS % apartment_id, headers = self.HEADERS).content, etree.HTMLParser())

				try:
					move_in = self.get_move_in(details)
				except:
					sys.stderr.write('Parsing error: %s\n' % apartment_id)
					continue

				status = move_in.month in self.ACCEPTABLE_MONTHS
				good_apartments.append(status)
			else:
				print 'apartment_id already in cache: ', apartment_id

		if good_apartments:
			self.send_message()

		self.write_ids(ids)

	def send_message(self):
		url = 'http://www.nova.is/Services/Messaging/SendSMS'
		data = {
			'msisdn': '8484903',
			'message': 'Found a good apartment!'
		}
		requests.post(url, headers = self.HEADERS, data = data)

def main():
	S = StudentBoet()
	S.run()

if __name__ == '__main__':
	main()
