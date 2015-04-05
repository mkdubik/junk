import os
import socket

IP, PORT = socket.gethostbyname(os.environ['ZEUS']), 7

'''
The magic packet is a broadcast frame containing anywhere within its payload 6 bytes of all 255 (FF FF FF FF FF FF in hexadecimal), followed by sixteen repetitions of the target computer's 48-bit MAC address, for a total of 102 bytes.

Since the magic packet is only scanned for the string above, and not actually parsed by a full protocol stack, it may be sent as any network- and transport-layer protocol, although it is typically sent as a UDP datagram to port 7 or 9, or directly over Ethernet as EtherType 0x0842
'''
padding = ''.join('\xff' for i in xrange(6))
hwaddr = ''.join('\x1c\x6f\x65\x2c\x9d\x8c' for i in xrange(16))

payload = padding + hwaddr

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.sendto(payload, (IP, PORT))

