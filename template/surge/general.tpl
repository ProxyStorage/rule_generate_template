loglevel = notify
http-listen = 0.0.0.0:6152
socks5-listen = 0.0.0.0:6153
show-error-page-for-reject = true
exclude-simple-hostnames = true
use-default-policy-if-wifi-not-primary = false

allow-wifi-access = true
allow-hotspot-access = true
# network-framework = true
http-api = xiaokang666@0.0.0.0:6171
http-api-web-dashboard = true
all-hybrid = true
wifi-access-http-port = 1314
external-controller-access = xiaokag666@0.0.0.0:6170

test-timeout = 5
internet-test-url = {{ internetTestUrl }}
proxy-test-url = {{ proxyTestUrl }}
proxy-test-udp = www.apple.com@64.6.64.6

ipv6 = false
ipv6-vif = off

force-http-engine-hosts = boxjs.com, boxjs.net
read-etc-hosts = true
doh-skip-cert-verification = true
hijack-dns = 8.8.8.8:53, 8.8.4.4:53
dns-server = {{ customParams.dns_server }}
encrypted-dns-follow-outbound-mode = true
encrypted-dns-server = {{customParams.encrypt_dns_server}}
geoip-maxmind-url = https://gitlab.com/Masaiki/GeoIP2-CN/-/raw/release/Country.mmdb

udp-priority = true
udp-policy-not-supported-behaviour = REJECT
always-raw-tcp-hosts = www.google.com, 91.108.56.*, 91.108.4.*, 91.108.8.*, 91.108.16.*, 91.108.12.*, 149.154.16*, 149.154.17*, 91.108.20.*, 185.76.151.*, 91.105.192.*, 5.28.19*, 95.161.76.*
wifi-assist = false
http-api-tls = true
use-local-host-item-for-proxy = true
compatibility-mode = 1

skip-proxy = localhost, *.local, captive.apple.com, 10.0.0.0/8, 127.0.0.1/32, 172.16.0.0/12, 192.168.0.0/16, 192.168.122.1/32, 193.168.0.1/32, ::1/128, fe80::/10, injections.adguard.org
always-real-ip = *.lan, *.direct
