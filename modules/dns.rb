

require "em-resolv-replace"

print "Entre the domain: "

$domain = gets.chomp

$dns = Resolv::DNS.new

$dns.each_resource("#{$domain}", Resolv::DNS::Resource::IN::MX) do |mail_server|
	puts mail_server.exchange
end
$dns.each_resource("#{$domain}", Resolv::DNS::Resource::IN::NS) do |name_server|
	puts name_server.name
end	
$dns.each_address("#{$domain}") do |address|
        puts address
end
