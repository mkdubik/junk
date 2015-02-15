import os
import threading
import time
import datetime
from fabric.colors import red, yellow, green

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
				else:
					print green(log)

def pid_finder():
	global pid
	pid_command = 'adb -d shell ps | grep "com.dohop" | cut -c10-15 | sed -e \'s/ //g\''
	while 1:
		pid = os.popen(pid_command).readline().replace('\n', '')
		time.sleep(0.5)

def main():
	t = threading.Thread(target=logcat)
	t.daemon = True
	t.start()

	t2 = threading.Thread(target=pid_finder)
	t2.daemon = True
	t2.start()
	while 1:
		i = raw_input()
		print i

if __name__ == '__main__':
	main()