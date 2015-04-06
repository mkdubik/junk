#!/bin/python
# -*- coding: utf-8 -*-

from pdb import set_trace
import praw
import subprocess
import youtube_dl


class MusicBot:

	_subreddits = [
		'trance',
		'atmosphericdnb',
		'dnb',
		'edm',
		'electrohouse',
		'swinghouse',
	]

	def youtube_cmd(self, submission):
		subprocess.call(['youtube-dl', '-t', '--no-mtime', submission.url])

	def my_hook(self, d):
		if d['status'] == 'finished':
			print('Done downloading, now converting ...')

	def youtube(self, submissions):
		ydl_opts = {
		    'format': 'bestaudio/best',
		    'postprocessors': [{
		        'key': 'FFmpegExtractAudio',
		        'preferredcodec': 'mp3',
		        'preferredquality': '192',
		    }],
		    'logger': MyLogger(),
		    'progress_hooks': [my_hook],
		}
		with youtube_dl.YoutubeDL(ydl_opts) as ydl:
		    ydl.download(submissions)

	def run(self):
		r = praw.Reddit(user_agent='music_bot')
		y = []
		for subreddit in self._subreddits:
			submissions = r.get_subreddit(subreddit).get_hot(limit=100)
			for i, x in enumerate(submissions):
				if 'youtube' in x.url:
					y.append(x.url)

		self._remove
		if y:
			self.youtube(x)
		set_trace()


x = MusicBot()
x.run()
