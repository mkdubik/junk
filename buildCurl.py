import os
import sys
import argparse
import subprocess

cwd = os.getcwd()
toolchains = cwd + '/toolchains'
toolchain_arm = toolchains + '/arm'

def build_libcurl(curl_source):
	os.environ['ARCH_TARGET'] = 'armv7-android-linux'
	os.environ['PLATFORM'] = 'arm-linux-androideabi'
	os.environ['ROOTDIR'] = toolchain_arm
	os.environ['SYSROOT'] = '%s/sysroot' % os.environ['ROOTDIR'] 
	os.environ['DROIDTOOLS'] = '%s/bin/%s' % (os.environ['ROOTDIR'], os.environ['PLATFORM'])
	os.environ['DROID_GCC_LIBS'] = '%s/lib/gcc/%s/4.9' % (os.environ['ROOTDIR'], os.environ['PLATFORM'])
	 
	os.environ['CC']='%s-gcc' % os.environ['DROIDTOOLS']
	os.environ['LD']='%s-ld' % os.environ['DROIDTOOLS']
	os.environ['CPP']='%s-cpp' % os.environ['DROIDTOOLS']
	os.environ['CXX']='%s-g++' % os.environ['DROIDTOOLS']
	os.environ['AR']= '%s-ar' % os.environ['DROIDTOOLS']
	os.environ['AS']= '%s-as' % os.environ['DROIDTOOLS']
	os.environ['NM']= '%s-nm' % os.environ['DROIDTOOLS']
	os.environ['STRIP']= '%s-strip' % os.environ['DROIDTOOLS']
	os.environ['CXXCPP']= '%s-cppf' % os.environ['DROIDTOOLS']
	os.environ['RANLIB']= '%s-ranlib' % os.environ['DROIDTOOLS']
	 
	os.environ['LDFLAGS']='-Os -fPIC -nostdlib -Wl,-rpath-link=%s/usr/lib -L%s/usr/lib -L%s -L%s/lib' % (
           os.environ['SYSROOT'], 
           os.environ['SYSROOT'],
           os.environ['DROID_GCC_LIBS'],
           os.environ['ROOTDIR'])

	os.environ['LIBS']='-lgcc -lc'
	os.environ['CFLAGS']='-Os -pipe -isysroot %s -I%s/include' % (os.environ['SYSROOT'], os.environ['ROOTDIR'])
	os.environ['CXXFLAGS']='-Os -pipe -isysroot %s -I%s/include' % (os.environ['SYSROOT'], os.environ['ROOTDIR'])

	os.chdir(curl_source)
	cmd = '''./configure --host=%s --target=%s --prefix=%s --without-zlib --without-ssl --with-random=/dev/urandom --enable-optimize --enable-nonblocking --disable-ares --disable-ftp --disable-ldap --disable-ldaps --disable-rtsp --disable-dict --disable-telnet --disable-tftp --disable-pop3 --disable-imap --disable-smtp --disable-gopher --disable-sspi --disable-ipv6 --disable-soname-bump --without-polarssl --without-gnutls --without-cyassl --without-axtls --without-libssh2 --disable-manual --disable-verbose''' % (
           os.environ['ARCH_TARGET'],
           os.environ['PLATFORM'],
           os.environ['ROOTDIR'])
	subprocess.call(cmd, shell=True)
	subprocess.call('make', shell=True)
	os.chdir(cwd)

	cmd = 'cp %s/lib/.libs/libcurl.a .' % curl_source
	subprocess.call(cmd, shell=True)
	print 'Done.'

def build_toolchains():
	if not os.path.exists(toolchains):
		os.makedirs(toolchains)
		os.makedirs(toolchain_arm)

	cmd = '%s/build/tools/make-standalone-toolchain.sh %s %s %s %s' % (
            os.environ['NDK_ROOT'],
           '--platform=android-16', 
           '--install-dir=%s' % toolchain_arm,
           '--arch=arm',
           '--toolchain=arm-linux-androideabi-4.9'
           ' system=linux-x86_64')
	subprocess.call(cmd, shell=True)

def main(params):
	if not params.curl_source:
		print 'Absoulte path to curl source is required. Stop'
		sys.exit(1)

	if 'NDK_ROOT' not in os.environ or not os.environ['NDK_ROOT']:
		print 'Absolute path to ndk folder is required in the NDK_ROOT environment variable. Stop.\nDownload the ndk bin file from google, unpack it and export its path. Example: export NDK_ROOT=/home/user/ndk'
		sys.exit(1)

	build_toolchains()
	build_libcurl(params.curl_source)

if __name__ == '__main__':
	parser = argparse.ArgumentParser(description='Build libcurl.a for arm/armv7/mips and x86 systems')
	parser.add_argument('--curl-source', help='Absolute path to curl source', default='')
	parser.add_argument('--output-dir', help='Path where libcurl.a will be saved', default='')
	params = parser.parse_args()
	main(params)
