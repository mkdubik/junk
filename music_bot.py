#!/bin/python
# -*- coding: utf-8 -*-

from pdb import set_trace
import praw
import subprocess

class bot:

	_subreddits = [
		'trance',
		'atmosphericdnb',
		'dnb',
		'edm',
		'electrohouse',
		'swinghouse',
		
	]

	def youtube(self, submission):
		subprocess.call(['youtube-dl', '-t', '--no-mtime', submission.url])

	def run(self):
		r = praw.Reddit(user_agent='music_bot')
		submissions = r.get_subreddit('trance').get_hot(limit=100)

		for i, x in enumerate(submissions):
			if 'youtube' in x.url:
				self.youtube(x)

x = bot()
x.run()
