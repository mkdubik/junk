#!/bin/python
# -*- coding: utf-8 -*-

from pdb import set_trace
import praw
import subprocess
import youtube_dl
import os
import sys
import json
import sqlite3


def my_hook(d):
	if d['status'] == 'finished':
		print('Done downloading, now converting ...')

class MusicBot:

	def __init__(self, PATH):
		self.PATH = PATH
		self.DATABASE = os.getcwd() + '/CACHE.db'
	
	def get_downloaded_urls(self):
		try:
			with sqlite3.connect(self.DATABASE) as connection:
				cursor = connection.cursor()
				cursor.execute('SELECT urls FROM music_bot WHERE genre = \'trance\'')
				return [a[0] for a in cursor.fetchall()]
		except sqlite3.OperationalError:
			cursor.execute('CREATE TABLE music_bot(urls TEXT, genre TEXT)')
			connection.commit()
			return []

	def write_urls(self, urls, genre = 'trance'):
		with sqlite3.connect(self.DATABASE) as connection:
			cursor = connection.cursor()
			for url in urls:
				cursor.execute('INSERT INTO music_bot(urls, genre) VALUES (?,?)', (url, genre))
			connection.commit()

	def youtube(self, urls):
		ydl_opts = {
		    'format': 'bestaudio/best',
		    'postprocessors': [{
		        'key': 'FFmpegExtractAudio',
		        'preferredcodec': 'mp3',
		        'preferredquality': '192',
		    }],
			'outtmpl': self.PATH + '%(title)s.%(ext)s',
		    'progress_hooks': [my_hook],
		    'max_filesize': 400000000,
		}
		with youtube_dl.YoutubeDL(ydl_opts) as ydl:
			ydl.download(urls)

	def run(self):
		r = praw.Reddit(user_agent='Awesome Music')
		y = []

		downloaded = self.get_downloaded_urls()
		print downloaded
		submissions = r.get_subreddit(sys.argv[1]).get_hot(limit=5)
		for i, x in enumerate(submissions):
			if x.url in downloaded:
				continue
			if 'youtube' in x.url:
				y.append(x.url)
		
		if y:
			self.youtube(y)
			self.write_urls(y)

if __name__ == '__main__':
	_subreddits = [
		'trance',
		'atmosphericdnb',
		'dnb',
		'edm',
		'electrohouse',
		'swinghouse',
		'tranceandbass',
	]

	if 'MUSIC_BOT' not in os.environ:
		print 'Missing MUSIC_BOT path in environ'
		sys.exit(1)

	if sys.argv[1] not in _subreddits:
		print 'Missing subreddit %s, register it first' % sys.argv[1]
		sys.exit(1)

	path = os.environ['MUSIC_BOT'] + sys.argv[1] + '/'
	if not os.path.exists(path):
		os.makedirs(path)
	
	b = MusicBot(path)	
	b.run()
