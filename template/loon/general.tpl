ipv6 = true
dns-server = {{ customParams.dns_server }}
# 阿里云DoH
doh-server = {{ customParams.encrypt_dns_server.doh }}
# 阿里云DoH3
doh3-server = {{ customParams.encrypt_dns_server.doh3 }}
# 阿里云DoQ
doq-server = {{ customParams.encrypt_dns_server.doq }}
disable-udp-ports = 443
allow-wifi-access = false
wifi-access-http-port = 7222
wifi-access-socks5-port = 7221
proxy-test-url = {{ proxyTestUrl }}
test-timeout = 2
interface-mode = auto
sni-sniffing = true
disable-stun = false
disconnect-on-policy-change = false
switch-node-after-failure-times = 3
resource-parser = https://gitlab.com/sub-store/Sub-Store/-/releases/permalink/latest/downloads/sub-store-parser.loon.min.js
geoip-url = https://gitlab.com/Masaiki/GeoIP2-CN/-/raw/release/Country.mmdb
skip-proxy = 10.0.0.0/8, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.168.0.0/16, 255.255.255.255/32, localhost, *.local, captive.apple.com, e.crashlynatics.com
bypass-tun = 10.0.0.0/8, 100.64.0.0/10, 127.0.0.0/8, 169.254.0.0/16, 172.16.0.0/12, 192.0.0.0/24, 192.0.2.0/24, 192.88.99.0/24, 192.168.0.0/16, 198.51.100.0/24, 203.0.113.0/24, 224.0.0.0/4, 239.255.255.250/32, 255.255.255.255/32, fc00::/7, fe80::/10, ff02::c/128, ff05::c/128, ff08::c/128, ff0e::c/128
