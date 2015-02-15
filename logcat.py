import sys
import os
import threading
import time
import datetime
from fabric.colors import red, yellow, green, cyan

pid = None
def logcat():
	logcat_input = os.popen('adb logcat')
	while 1:
		line = logcat_input.readline().replace('\n','')
		if pid:
			if '( %s)' % pid in line or '(%s)' % pid in line:
				log = '%s %s' % (datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S'), line)
				if 'E/' in line:
					print red(log)
				elif 'W/' in line:
					print yellow(log)
				elif 'D/' in line:
					print cyan(log)
				else:
					print green(log)

def pid_poller(process_name):
	global pid
	pid_command = 'adb -d shell ps | grep "%s" | cut -c10-15 | sed -e \'s/ //g\'' % process_name
	while 1:
		pid = os.popen(pid_command).readline().replace('\n', '')
		time.sleep(0.5)

def main(process_name):
	t = threading.Thread(target=logcat)
	t.daemon = True
	t.start()

	t2 = threading.Thread(target=pid_poller, args=(process_name,))
	t2.daemon = True
	t2.start()
	while 1:
		try:
			i = raw_input()
			print i
		except KeyboardInterrupt:
			break

if __name__ == '__main__':
	if len(sys.argv) < 2:
		print 'Bad args: No process name'
		sys.exit(1)
	main(sys.argv[1])
	