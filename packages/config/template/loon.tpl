# {{ downloadUrl }}
[General]
ipv6 = true
dns-server = 223.5.5.5, 223.6.6.6
# 阿里云DoH
# doh-server = https://223.5.5.5/dns-query, https://223.6.6.6/dns-query
# 阿里云DoH3
# doh3-server = h3://223.5.5.5/dns-query, h3://223.6.6.6/dns-query
# 阿里云DoQ
doq-server = quic://223.5.5.5:853, quic://223.6.6.6:853
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

[Host]

[Proxy]

WARP = WireGuard,interface-ip=172.16.0.2,interface-ipv6=2606:4700:110:82d2:e82f:bc66:3d14:dba1,private-key="+C394aJbdEM0xiU9kmP0JUkSSY2YK8/pkqqBKRD+mWk=",mtu=1280,dns=162.159.36.1,dnsv6=2606:4700:4700::1111,keepalive=45,peers=[{public-key="bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=",allowed-ips="0.0.0.0/0,::/0",endpoint=engage.cloudflareclient.com:2408,reserved=[136,51,216]}]

[Remote Proxy]
Flower = https://sub.store/download/Flower-Trojan,parser-enabled = true,udp=true,fast-open=true,vmess-aead=true,enabled=true,img-url=https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/Twoandz9/Flowercloud.png
Fish = https://sub.store/download/fishport,parser-enabled = true,udp=true,fast-open=true,vmess-aead=true,enabled=true,img-url=https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/FishChips_01.png
Error is best = https://sub.store/download/Error,parser-enabled = true,udp=false,fast-open=false,vmess-aead=true,enabled=true,img-url=https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/Loon_08.png
FishP = https://sub.store/download/fishport2,parser-enabled = true,udp=true,fast-open=true,vmess-aead=true,enabled=true,img-url=https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/FishChips_01.png

[Proxy Group]
{{ customParams.proxyName.Proxy }} = select,{{ customParams.proxyName.Select }},{{ customParams.proxyName.Warp }},{{ customParams.proxyName.Auto }},{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Reject }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Proxy.png
{{ customParams.proxyName.Select }} = select,{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},AllNode,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/select.png
{{ customParams.proxyName.Auto }} = url-test,AllNode,url = {{ proxyTestUrl }},interval = 600,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Auto.png
{{ customParams.proxyName.Spotify }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Spotify.png
{{ customParams.proxyName.Telegram }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Telegram.png
{{ customParams.proxyName.BiliBili }} = select,DIRECT,{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }}, img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Bilibili.png
{{ customParams.proxyName.Apple }} = select,{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Apple.png
{{ customParams.proxyName.TikTok }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Tiktok.png
{{ customParams.proxyName.DouYin }} = select,{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Tiktok.png
{{ customParams.proxyName.PikPak }} = select,{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/softlyx/PikPak.png
{{ customParams.proxyName.GoogleDriver }} = select,{{ customParams.proxyName.Google }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/Google_Drive.png
{{ customParams.proxyName.Google }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Google.png
{{ customParams.proxyName.Bing }} = select,{{ customParams.proxyName.Microsoft }},{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/lige47/bing(3).png
{{ customParams.proxyName.OneDrive }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/OneDrive.png
{{ customParams.proxyName.Microsoft }} = select,{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/lige47/microsoft.png
{{ customParams.proxyName.Company }} = select,{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/Koolson/Qure/master/IconSet/Color/Dinosaur.png
{{ customParams.proxyName.Reddit }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/Toperlock/Quantumult/main/icon/Reddit.png
{{ customParams.proxyName.Coze }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/Toperlock/Quantumult/main/icon/ChatGPT.png
{{ customParams.proxyName.OpenAI }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/Toperlock/Quantumult/main/icon/ChatGPT.png
{{ customParams.proxyName.Developer }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/lige47/github(1).png
{{ customParams.proxyName.PN }} = select,{{ customParams.proxyName.Reject }},{{ customParams.proxyName.Emby }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Pornhub.png
{{ customParams.proxyName.Emby }} = select,{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},AllNode,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Emby.png
{{ customParams.proxyName.Direct }} = select,DIRECT,{{ customParams.proxyName.Reject }},{{ customParams.proxyName.Proxy }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Direct.png
{{ customParams.proxyName.Reject }} = select,REJECT,DIRECT,{{ customParams.proxyName.Proxy }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Reject.png
{{ customParams.proxyName.SpeedTest }} = select,{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Speedtest.png
{{ customParams.proxyName.Final }} = select,{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Warp }},{{ customParams.proxyName.Direct }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Final01.png
{{ customParams.proxyName.Warp }} = select,WARP HK,WARP JP,WARP SG,WARP US,WARP OTHER,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/warp.png
{{ customParams.proxyName.SubNodesSelect }} = select,AllNode,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/chxm1023/Loon_11.png
{{ customParams.proxyName.HongKongSelect }} = select,HongKong,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/HK02.png
{{ customParams.proxyName.TaiWanSelect }} = select,Taiwan,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/TW.png
{{ customParams.proxyName.JapanSelect }} = select,Japan,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/JP.png
{{ customParams.proxyName.KoreaSelect }} = select,Korea,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/KR.png
{{ customParams.proxyName.SingaporeSelect }} = select,Singapore,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/SG.png
{{ customParams.proxyName.AmericanSelect }} = select,American,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/US.png
{{ customParams.proxyName.OtherSelect }} = select,Other,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/Twoandz9/Xiaoheizi.png

[Remote Filter]
AllNode = NameRegex, FilterKey = "^(?!.*((?i)回国|校园|游戏|教育|官网|客服|网站|网址|获取|订阅|流量|到期|机场|下次|版本|官址|备用|群|GAME|TG|traffic|expire|netease)).*$"
HongKong = NameRegex, FilterKey = "^(?=.*((?i)🇭🇰|港|虚通|HK|Hong)).*$"
Taiwan = NameRegex, FilterKey = "^(?=.*((?i)🇹🇼|台|TW|Tai)).*$"
Japan = NameRegex, FilterKey = "^(?=.*((?i)🇯🇵|日|川日|东京|大阪|泉日|埼玉|JP|Japan)).*$"
Korea = NameRegex, FilterKey = "^(?=.*((?i)🇰🇷|韩|韓|首尔|KR|Korea)).*$"
American = NameRegex, FilterKey = "^(?=.*((?i)🇺🇸|美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|US|UnitedStates)).*$"
Singapore = NameRegex, FilterKey = "^(?=.*((?i)🇸🇬|新加坡|狮|SG|Singapore)).*$"
Other = NameRegex, FilterKey = "^(?!.*((?i)🇭🇰|🇨🇳|🇯🇵|🇰🇷|🇸🇬|🇺🇸|netease|traffic|expire)).*$"
unblock = NameRegex, FilterKey = "(?i)(unblock|music|云音乐)"


[Remote Rule]
# 规则修正
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Direct/Direct.list, policy={{ customParams.proxyName.Direct }}, tag=规则修正, parser-enable=true, enabled=true
https://adrules.top/adrules.list, policy={{ customParams.proxyName.Reject }}, tag=adrules, parser-enable=true, enabled=true
# 微信
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/WeChat/WeChat.list, policy={{ customParams.proxyName.Direct }}, tag=微信, parser-enable=true, enabled=true
# BiliBili
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/BiliBili/BiliBili.list, policy={{ customParams.proxyName.BiliBili }}, tag=BiliBili, parser-enable=true, enabled=true
# Apple
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/AppStore/AppStore.list, policy={{ customParams.proxyName.Apple }}, tag=AppleStore, parser-enable=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Apple/Apple.list, policy={{ customParams.proxyName.Apple }}, tag=Apple, parser-enable=true, enabled=true
#PikPak
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/PikPak/PikPak.list, policy={{ customParams.proxyName.PikPak }}, tag=Pikpak, parser-enable=true, enabled=true
# Google
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GoogleDrive/GoogleDrive.list, policy={{ customParams.proxyName.GoogleDriver }}, tag=Google Driver, parser-enable=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Google/Google.list, policy={{ customParams.proxyName.Google }}, tag=Google, parser-enable=true, enabled=true
# Telegram
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Telegram/Telegram.list, policy={{ customParams.proxyName.Telegram }}, tag=Telegram, parser-enable=true, enabled=true
# Microsoft
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/OneDrive/OneDrive.list, policy={{ customParams.proxyName.OneDrive }}, tag=OneDriver, parser-enable=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Bing/Bing.list, policy={{ customParams.proxyName.Bing }}, tag=Bing, parser-enable=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Microsoft/Microsoft.list, policy={{ customParams.proxyName.Microsoft }}, tag=Microsoft, parser-enable=true, enabled=true
# TikTok
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/TikTok/TikTok.list, policy={{ customParams.proxyName.TikTok }}, tag=TikTok, parser-enable=true, enabled=true
# 抖音
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/DouYin/DouYin.list, policy={{ customParams.proxyName.DouYin }}, tag=DouYin, parser-enable=true, enabled=true
# Spotify规则
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Spotify/Spotify.list, policy={{ customParams.proxyName.Spotify }}, tag=Spotify, parser-enable=true, enabled=true
# Reddit
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Reddit/Reddit.list, policy={{ customParams.proxyName.Reddit }}, tag=Reddit, parser-enable=true, enabled=true
#OpenAI
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Claude/Claude.list, policy={{ customParams.proxyName.OpenAI }}, tag=Claude, parser-enable=true, enabled=true
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/OpenAI/OpenAI.list, policy={{ customParams.proxyName.OpenAI }}, tag=OpenAI, parser-enable=true, enabled=true
# GitHub
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/GitHub/GitHub.list, policy={{ customParams.proxyName.Developer }}, tag=GitHub, parser-enable=true, enabled=true
# 开发需要
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Developer/Developer.list, policy={{ customParams.proxyName.Developer }}, tag=Developer, parser-enable=true, enabled=true
# Speedtest
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Loon/Speedtest/Speedtest.list, policy={{ customParams.proxyName.SpeedTest }}, tag=SpeedTest, parser-enable=true, enabled=true

[Proxy Chain]
WARP HK = {{ customParams.proxyName.HongKongSelect }},WARP, udp=true
WARP JP = {{ customParams.proxyName.JapanSelect }},WARP, udp=true
WARP SG = {{ customParams.proxyName.SingaporeSelect }},WARP, udp=true
WARP US = {{ customParams.proxyName.AmericanSelect }},WARP, udp=true
WARP OTHER = {{ customParams.proxyName.OtherSelect }},WARP, udp=true
[Rule]
# 本地网络直连
GEOIP,CN,{{ customParams.proxyName.Direct }}
# 公司业务域名
{{ snippet("../../../packages/rule/snippet/company_rules.tpl").main(customParams.proxyName.Company) }}
# 自定义直连域名
{{ snippet("../../../packages/rule/snippet/direct_rules.tpl").main(customParams.proxyName.Direct) }}
# Coze
{{ snippet("../../../packages/rule/snippet/coze_rules.tpl").main(customParams.proxyName.Coze) }}
# Porn
{{ snippet("../../../packages/rule/snippet/porn_rules.tpl").main(customParams.proxyName.PN) }}
# Emby
{{ snippet("../../../packages/rule/snippet/emby_rules.tpl").main(customParams.proxyName.Emby) }}
FINAL,{{ customParams.proxyName.Final }}

[Rewrite]
^https?:\/\/api\.m\.jd.com\/client\.action\?functionId=start reject-200 enable = true

[Remote Rewrite]
https://raw.githubusercontent.com/nzw9314/Loon/master/Q-Search_All_in_one.conf, tag=Q-Search_All_in_one, enabled=true

[Script]
http-request ^https?:\/\/boxjs\.net script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/box/chavy.boxjs.js, requires-body=true, timeout=120, tag=BoxJs.net
http-request ^https?:\/\/(raw|gist)\.githubusercontent.com script-path=https://raw.githubusercontent.com/Peng-YM/QuanX/master/Rewrites/GithubPrivate/github-private-repo.js, requires-body=true, binary-body-mode=true, timeout=10, tag=Github Private

[Remote Script]


[Plugin]
https://raw.githubusercontent.com/Tartarus2014/Loon-Script/master/Plugin/skip-proxy.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Amap_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/BaiduNetDisk_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/BaiduSearchWebpage_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Bilibili_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Cainiao_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/JD_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/NeteaseCloudMusic_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/QQMusic_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/RedPaper_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Remove_ads_by_keli.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/smzdm_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Spotify_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Taobao_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Weibo_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Weixin_Official_Accounts_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/WexinMiniPrograms_Remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/YouTube_remove_ads.plugin, tag=YouTube去广告, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Zhihu_remove_ads.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Auto_Join_TF.plugin, enabled=false
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/BingAI.plugin, policy={{ customParams.proxyName.JapanSelect }}, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/JD_Price.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/LoonGallery.plugin, policy={{ customParams.proxyName.Proxy }}, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Node_detection_tool.plugin, tag=Node Detection Tool, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/NodeLinkCheck.Plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Prevent_DNS_Leaks.plugin, policy={{ customParams.proxyName.Proxy }}, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Sub-Store.plugin, policy={{ customParams.proxyName.Proxy }}, tag=SubStore, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/TikTok_redirect.plugin, policy={{ customParams.proxyName.TikTok }}, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/WARP_Node_Query.plugin, enabled=true
https://gitlab.com/lodepuly/vpn_tool/-/raw/master/Tool/Loon/Plugin/Weixin_external_links_unlock.plugin, enabled=true
https://raw.githubusercontent.com/VirgilClyne/iRingo/main/plugin/TestFlight.plugin, enabled=true

[MITM]
ca-p12 = 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
ca-passphrase = B4PU0M6M
enable = false
hostname = gist.githubusercontent.com,raw.githubusercontent.com,testflight.apple.com,mp.weixin.qq.com,weixin110.qq.com
skip-server-cert-verify = true
