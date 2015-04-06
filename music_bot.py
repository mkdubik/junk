#!/bin/python
# -*- coding: utf-8 -*-

from pdb import set_trace
import praw
import subprocess
import youtube_dl
import os
import sys


class MyLogger(object):
    def debug(self, msg):
        pass

    def warning(self, msg):
        pass

    def error(self, msg):
        print(msg)


def my_hook(d):
	if d['status'] == 'finished':
		print('Done downloading, now converting ...')

class MusicBot:

	def __init__(self, PATH):
		self.PATH = PATH
	
	def youtube(self, submissions):
		ydl_opts = {
		    'format': 'bestaudio/best',
		    'postprocessors': [{
		        'key': 'FFmpegExtractAudio',
		        'preferredcodec': 'mp3',
		        'preferredquality': '192',
		    }],
			'outtmpl': self.PATH + '%(title)s.%(ext)s',
		    'logger': MyLogger(),
		    'progress_hooks': [my_hook],
			'max_filesize': 400000000,
		}
		with youtube_dl.YoutubeDL(ydl_opts) as ydl:
		    ydl.download(submissions)

	def run(self):
		r = praw.Reddit(user_agent='Awesome Music')
		y = []

		submissions = r.get_subreddit(sys.argv[1]).get_hot(limit=100)
		for i, x in enumerate(submissions):
			if 'youtube' in x.url:
				y.append(x.url)

		if y:
			self.youtube([x.url])
		set_trace()

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
