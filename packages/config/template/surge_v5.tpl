# {{ downloadUrl }}
[General] 
http-listen = 0.0.0.0:6152
socks5-listen = 0.0.0.0:6153
external-controller-access = xiaokag666@0.0.0.0:6170
geoip-maxmind-url = https://gitlab.com/Masaiki/GeoIP2-CN/-/raw/release/Country.mmdb

internet-test-url = {{ internetTestUrl }}
proxy-test-url = {{ proxyTestUrl }}

test-timeout = 5
ipv6 = true
ipv6-vif = auto
show-error-page-for-reject = true

loglevel = notify
exclude-simple-hostnames = true
use-default-policy-if-wifi-not-primary = false
force-http-engine-hosts = boxjs.com, boxjs.net

hijack-dns = *:53
dns-server = 119.29.29.29, 223.5.5.5, 223.6.6.6, 114.114.114.114
read-etc-hosts = true
doh-skip-cert-verification = true
encrypted-dns-server = quic://dns.alidns.com
encrypted-dns-follow-outbound-mode = true

allow-wifi-access = true
allow-hotspot-access = true
# network-framework = true
http-api = xiaokang666@0.0.0.0:6171
http-api-web-dashboard = true
all-hybrid = true
wifi-access-http-port = 1314
udp-priority = true
always-raw-tcp-hosts = www.google.com, 91.108.56.*, 91.108.4.*, 91.108.8.*, 91.108.16.*, 91.108.12.*, 149.154.16*, 149.154.17*, 91.108.20.*, 185.76.151.*, 91.105.192.*, 5.28.19*
wifi-assist = false
http-api-tls = true
use-local-host-item-for-proxy = true
compatibility-mode = 1

# > 跳过代理
# 跳过某个域名或者 IP 段，这些目标主机将不会由 Surge Proxy 处理。
# (macOS 版本中，如果启用了 Set as System Proxy, 这些值会被写入到系统网络代理设置.)
skip-proxy = %INSERT% localhost, *.local, captive.apple.com, e.crashlytics.com, www.baidu.com, passenger.t3go.cn, yunbusiness.ccb.com, wxh.wo.cn, gate.lagou.com, www.abchina.com.cn, login-service.mobile-bank.psbc.com, mobile-bank.psbc.com, 10.0.0.0/8, 127.0.0.1/32, 172.16.0.0/12, 192.168.0.0/16, 192.168.122.1/32, 193.168.0.1/32, ::1/128, fe80::/10

# > Always Real IP Hosts
# 当 Surge VIF 处理 DNS 问题时，此选项要求 Surge 返回一个真正的 IP 地址，而不是一个假 IP 地址。
# DNS 数据包将被转发到上游 DNS 服务器。
always-real-ip = %INSERT% *.lan, *.direct, cable.auth.com, *.msftconnecttest.com, *.msftncsi.com, network-test.debian.org, detectportal.firefox.com, resolver1.opendns.com, *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com, stun.*, global.turn.twilio.com, global.stun.twilio.com, app.yinxiang.com, injections.adguard.org, local.adguard.org, cable.auth.com, localhost.*.qq.com, localhost.*.weixin.qq.com, *.logon.battlenet.com.cn, *.logon.battle.net, *.blzstatic.cn, music.163.com, *.music.163.com, *.126.net, musicapi.taihe.com, music.taihe.com, songsearch.kugou.com, trackercdn.kugou.com, *.kuwo.cn, api-jooxtt.sanook.com, api.joox.com, joox.com, y.qq.com, *.y.qq.com, streamoc.music.tc.qq.com, mobileoc.music.tc.qq.com, isure.stream.qqmusic.qq.com, dl.stream.qqmusic.qq.com, aqqmusic.tc.qq.com, amobile.music.tc.qq.com, *.xiami.com, *.music.migu.cn, music.migu.cn, proxy.golang.org, *.mcdn.bilivideo.cn, *.cmpassport.com, id6.me, open.e.189.cn, mdn.open.wo.cn, opencloud.wostore.cn, auth.wosms.cn, *.jegotrip.com.cn, *.icitymobile.mobi, *.pingan.com.cn, *.cmbchina.com, pool.ntp.org, *.pool.ntp.org, ntp.*.com, time.*.com, ntp?.*.com, time?.*.com, time.*.gov, time.*.edu.cn, *.ntp.org.cn, PDC._msDCS.*.*, DC._msDCS.*.*, GC._msDCS.*.*

[Host]

[Ponte]
client-proxy-name = {{ customParams.proxyName.HongKongSelect }}

[Proxy]
{{ getSurgeNodes(nodeList) }}
WARP HK = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.HongKongSelect }}, test-url={{ proxyTestUrl }}
WARP US = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.AmericanSelect }}, test-url={{ proxyTestUrl }}
WARP SG = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.SingaporeSelect }}, test-url={{ proxyTestUrl }}
WARP JP = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.JapanSelect }}, test-url={{ proxyTestUrl }}
WARP Other = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.OtherSelect }}, test-url={{ proxyTestUrl }}

[Proxy Group]
{{ customParams.proxyName.Proxy }} = select, {{ customParams.proxyName.Select }}, {{ customParams.proxyName.Auto }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Select }} = select, {{ customParams.allSelect }}, update-interval=0, no-alert=0, hidden=0, include-all-proxies=1, include-other-group="{{ customParams.allIncludeGroup }}"
# {{ customParams.proxyName.Wifi }} = ssid, default = {{ customParams.proxyName.Proxy }}, cellular = {{ customParams.proxyName.Proxy }}, "DreamyTZK_WiFi" = DIRECT
{{ customParams.proxyName.Warp }} = select, WARP HK, WARP SG, WARP JP, WARP US, WARP Other, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Spotify }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Telegram }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.BiliBili }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.AppStore }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Apple }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Apple }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.GoogleDriver }} = select, {{ customParams.proxyName.Google }}, {{ customParams.allSelect }},  no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Google }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Bing }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.OneDrive }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Emby }},{{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Microsoft }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Company }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Reddit }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Coze }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.OpenAI }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Developer }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.PikPak }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.TikTok }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.DouYin }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.PN }} = select, {{ customParams.proxyName.Emby }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=1, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Emby }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.SpeedTest }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Download }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Direct }} = select, DIRECT,{{ customParams.proxyName.Select }}, REJECT, no-alert=0, hidden=0
{{ customParams.proxyName.Reject }} = select, REJECT, REJECT-TINYGIF, DIRECT, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Final }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Auto }} = url-test, url={{ proxyTestUrl }}, update-interval=86400, timeout=0, interval=300, tolerance=0, no-alert=1, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.SubNodesSelect }} = select, no-alert=0, hidden=0, include-all-proxies=1, policy-regex-filter=^(?!.*((?i)回国|校园|游戏|教育|官网|客服|网站|网址|获取|订阅|流量|到期|机场|下次|版本|官址|备用|群|GAME|TG|traffic|expire)).*$
{{ customParams.proxyName.HongKongSelect }} = select, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇭🇰|港|虚通|HK|Hong)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
{{ customParams.proxyName.TaiWanSelect }} = select, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇹🇼|台|TW|Tai)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
{{ customParams.proxyName.JapanSelect }} = select, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇯🇵|日本|川日|东京|大阪|泉日|埼玉|JP|Japan)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
{{ customParams.proxyName.KoreaSelect }} = select, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇰🇷|韩|韓|首尔|KR|Korea)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
{{ customParams.proxyName.SingaporeSelect }} = select, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇸🇬|新加坡|狮|SG|Singapore)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
{{ customParams.proxyName.AmericanSelect }} = select, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇺🇸|美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|US|UnitedStates)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
{{ customParams.proxyName.OtherSelect }} = select, policy-regex-filter=^(?!.*((?i)🇭🇰|🇨🇳|🇯🇵|🇰🇷|🇸🇬|🇺🇸)).*$, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"
[Rule]
# 公司业务域名
{{ snippet("../../../packages/rule/snippet/company_rules.tpl").main(customParams.proxyName.Company) }}
# 自定义直连域名
{{ snippet("../../../packages/rule/snippet/direct_rules.tpl").main(customParams.proxyName.Direct) }}
# 规则修正
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Direct/Direct.list,{{ customParams.proxyName.Direct }}
AND,((PROTOCOL,UDP), (DEST-PORT,443)),REJECT-NO-DROP
# 隐私保护
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Privacy/Privacy_All.list,{{ customParams.proxyName.Reject }}
RULE-SET,https://raw.githubusercontent.com/Invincible-Tyrannosaurus/clash-rule/main/Reject.list,{{ customParams.proxyName.Reject }}
# adrules
RULE-SET,https://adrules.top/adrules.list,{{ customParams.proxyName.Reject }}
# 微信
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/WeChat/WeChat.list,{{ customParams.proxyName.Direct }}
# 哔哩哔哩
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/BiliBili/BiliBili.list,{{ customParams.proxyName.BiliBili }}
# Apple
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/AppStore/AppStore.list,{{ customParams.proxyName.AppStore }}
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Apple/Apple.list,{{ customParams.proxyName.Apple }}
# 游戏节点
# RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Game/Game.list,{{ customParams.proxyName.Game }}
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/PikPak/PikPak.list,{{ customParams.proxyName.PikPak }}
# Google
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/GoogleDrive/GoogleDrive.list,{{ customParams.proxyName.GoogleDriver }}
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Google/Google.list,{{ customParams.proxyName.Google }}
# Telegram 域名
RULE-SET,https://raw.githubusercontent.com/SukkaW/Surge/master/Source/non_ip/telegram.conf,{{ customParams.proxyName.Telegram }},extended-matching
# 非官方收集的 Telegram ASN 列表
RULE-SET,https://raw.githubusercontent.com/SukkaW/Surge/master/Source/ip/telegram_asn.conf,{{ customParams.proxyName.Telegram }}
# 静默丢弃 Telegram 客户端发起的、目标非 Telegram 域名和 IP 的其他连接
PROCESS-NAME,Telegram,REJECT-DROP
#Bing
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Bing/Bing.list,{{ customParams.proxyName.Bing }}
# OneDriver
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/OneDrive/OneDrive.list,{{ customParams.proxyName.OneDrive }}
# Microsoft
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Microsoft/Microsoft.list,{{ customParams.proxyName.Microsoft }}
# tiktok
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/TikTok/TikTok.list,{{ customParams.proxyName.TikTok }}
# 抖音
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/DouYin/DouYin.list,{{ customParams.proxyName.DouYin }}
# Porn
{{ snippet("../../../packages/rule/snippet/porn_rules.tpl").main(customParams.proxyName.PN) }}
# Emby
{{ snippet("../../../packages/rule/snippet/emby_rules.tpl").main(customParams.proxyName.Emby) }}
# Spotify规则
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Spotify/Spotify.list,{{ customParams.proxyName.Spotify }}
# Reddit
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Reddit/Reddit.list,{{ customParams.proxyName.Reddit }}
# open ai规则
{{ snippet("../../../packages/rule/snippet/coze_rules.tpl").main(customParams.proxyName.Coze) }}
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Claude/Claude.list,{{ customParams.proxyName.OpenAI }}
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/OpenAI/OpenAI.list,{{ customParams.proxyName.OpenAI }}
# GitHub
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/GitHub/GitHub.list,{{ customParams.proxyName.Developer }}
# 开发需要
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Developer/Developer.list,{{ customParams.proxyName.Developer }}
# Speedtest
RULE-SET,https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Surge/Speedtest/Speedtest.list,{{ customParams.proxyName.SpeedTest }}
# GEOIP数据库内国内IP-直连
# GEOIP,CN,{{ customParams.proxyName.Direct }}
# 本地网络直连
RULE-SET,LAN,{{ customParams.proxyName.Direct }}
# > ASN China
RULE-SET,https://raw.githubusercontent.com/VirgilClyne/GetSomeFries/main/ruleset/ASN.China.list,{{ customParams.proxyName.Direct }}
# 以上规则未包含的其他访问
FINAL,{{ customParams.proxyName.Final }},dns-failed

[MITM]
skip-server-cert-verify = true
tcp-connection = true
h2 = true
hostname = interface.music.163.com, alist.antmoe.com:443, -*.facebook.com, -*.instagram.com, -*.twitter.com, -*.tiktokv.com, -*.snssdk.com, -*.pstatp.com
hostname-disabled = gateway.icloud.com, gateway.icloud.com.cn, weather-data.apple.com, buy.itunes.apple.com, pan.baidu.com
ca-passphrase = 835E33AE
ca-p12 = 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

[Script]
Sub-Store Core=type=http-request,pattern=^https?:\/\/sub\.store\/((download)|api\/(preview|sync|(utils\/node-info))),script-path=https://github.com/sub-store-org/Sub-Store/releases/latest/download/sub-store-1.min.js,requires-body=true,timeout=120
Sub-Store Simple=type=http-request,pattern=^https?:\/\/sub\.store,script-path=https://github.com/sub-store-org/Sub-Store/releases/latest/download/sub-store-0.min.js,requires-body=true
Sub-Store Sync=type=cron,cronexp=0 0 * * *,wake-system=1,timeout=120,script-path=https://github.com/sub-store-org/Sub-Store/releases/latest/download/cron-sync-artifacts.min.jsSub-Store Sync=type=cron,cronexp=0 0 * * *,wake-system=1,timeout=120,script-path=https://github.com/sub-store-org/Sub-Store/releases/latest/download/cron-sync-artifacts.min.js

Rewrite: BoxJs = type=http-request,pattern=https?:\/\/boxjs\.(com|net),script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/box/chavy.boxjs.js, requires-body=true, timeout=120

网易云音乐签到Cookie = type=http-request,pattern=^https:\/\/interface\.music\.163\.com\/weapi\/nmusician\/,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/leiyiyan/resource/main/script/netease_musician/cookie.js
网易云音乐人签到 = type=cron,cronexp=8 0 * * *,script-path=https://raw.githubusercontent.com/leiyiyan/resource/main/script/netease_musician/task.js,script-update-interval=0

阿里云盘获取cookie = script-path=https://gist.githubusercontent.com/Sliverkiss/33800a98dcd029ba09f8b6fc6f0f5162/raw/aliyun.js,requires-body=true,timeout=10,enabled=false,tag=阿里云盘获取cookie,type=http-request,pattern=^https:\/\/(auth|aliyundrive)\.alipan\.com\/v2\/account\/token
阿里云盘 = script-path=https://gist.githubusercontent.com/Sliverkiss/33800a98dcd029ba09f8b6fc6f0f5162/raw/aliyun.js,timeout=10,tag=阿里云盘,type=cron,cronexp="0 0,7,11 * * *"

[WireGuard Cloudflare]
private-key = +C394aJbdEM0xiU9kmP0JUkSSY2YK8/pkqqBKRD+mWk=
self-ip = 172.16.0.2
self-ip-v6 = 2606:4700:110:82d2:e82f:bc66:3d14:dba1
dns-server = 162.159.36.1, 2606:4700:4700::1111
mtu = 1280
peer = (public-key = bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=, allowed-ips = "0.0.0.0/0, ::0/0", endpoint = engage.cloudflareclient.com:2408, keepalive = 45, client-id = 136/51/216)

