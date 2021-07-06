

require "nmap/program"

print "Entre the target domain: "
$target = gets.chomp

Nmap::Program.scan do |nmap|
	nmap.syn_scan = true
	nmap.service_scan = true	
	nmap.os_fingerprint = true
	nmap.xml = '../result/scan.xml'
	nmap.ports = [21, 22, 25, 30, 50, 75, 80, 110, 120, 130, 443, 8080, 8443]	
	nmap.targets = "#{$target}"
end
