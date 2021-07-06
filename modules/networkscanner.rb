
require "nmap/program"

Nmap::Program.scan do |nmap|
    nmap.syn_scan = true
    nmap.service_scan = true
    nmap.os_fingerprint = true
    nmap.xml = "report.xml"
    nmap.ports = [21, 22, 25, 80, 443]
    nmap.targets = "192.168.1.*"
end
