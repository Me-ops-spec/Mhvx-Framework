
import os
#import timedate
#from timedate import timedate
#from optparse import OptionParse
from clint.textui import colored
from os import system
from time import sleep
#import optparse
from sys import exit

print(colored.red("\t\t\t\tWelcom I'n Mhvx-Framework"))
print("""

\t\t\t\t Mhvx Framwork \n\n
\t\t[1]: Dns Information Mail, NameServer, Address_Ip
\t\t[2]: Network Scanner Width Nmap
\t\t[3]: Network Scanner Width Netdiscover
\t\t[4]: Scanner Target Or Website
\t\t[5]: Automate Youre Advenced Scannner Site
\t\t[6]: Crash System Trool
\t\t[99]: exit 
""")

while True:
    chose = int(input("Mhvx #: "))

    if not chose:
       exit(0)
    elif chose == 1:
       system("ruby modules/dns.rb")
    elif chose == 2:
       system("ruby modules/networkscanner.rb")
    elif chose == 3:
       system("bash modules/netdiscover.sh")
    elif chose == 4:
       system("ruby modules/target_scanner.rb")
    elif chose == 5:
       system("bash advenced.sh")
    elif chose == 6:
       system("bash prankvirous.sh")
    else:
       exit(0)
