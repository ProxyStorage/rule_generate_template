# {{ downloadUrl }}

mode: rule
log-level: info
allow-lan: true
ipv6: false

port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893

external-controller: 0.0.0.0:9090
{% if customParams.secret %}
secret: {{ customParams.secret }}
{% endif %}
{% if customParams.secret %}
authentication: {{ customParams.authentication | json }}
{% endif %}

clash-for-android:
  append-system-dns: false
profile:
  tracing: true
experimental:
  sniff-tls-sni: true

{% if customParams.dns %}
dns:
  default-nameserver:
    - 119.29.29.29
    - 223.5.5.5
  nameserver:
    - 119.29.29.29
    - 223.5.5.5
    - system
  fallback:
    - https://223.5.5.5/dns-query
    - https://223.6.6.6/dns-query
    - https://1.12.12.12/dns-query
    - https://rubyfish.cn/dns-query
  fallback-filter:
    geoip: true
    geoip-code: CN
    domain:
      - +.google.com
      - +.facebook.com
      - +.twitter.com
      - +.youtube.com
      - +.xn--ngstr-lra8j.com
      - +.google.cn
      - +.googleapis.cn
      - +.googlevideo.com
      - +.gvt1.com
      - +.github.com
      - +.githubusercontent.com
    ipcidr:
      - 0.0.0.0/8
      - 10.0.0.0/8
      - 100.64.0.0/10
      - 127.0.0.0/8
      - 169.254.0.0/16
      - 172.16.0.0/12
      - 192.0.0.0/24
      - 192.0.2.0/24
      - 192.88.99.0/24
      - 192.168.0.0/16
      - 198.18.0.0/15
      - 198.51.100.0/24
      - 203.0.113.0/24
      - 224.0.0.0/4
      - 240.0.0.0/4
      - 255.255.255.255/32
  fake-ip-filter:
    - '+.cn'
    - '+.10010.com'
    - '+.chinaunicom.com'
    - '+.baidu.com'
    - '+.alipay.com'
    - '+.alipayobjects.com'
    - '+.dl.google.com'
    - '+.jijifun.com'
    - 'connect.rom.miui.com'
    - 'captive.apple.com'
    - 'wifi.vivo.com.cn'
    - 'localhost.ptlogin2.qq.com'
    - '+.msftnsci.com'
    - '+.msftconnecttest.com'
    - '+.gstatic.com'
    - '+.stun.*.*'
    - '+.stun.*.*.*'
    - '+.stun.*.*.*.*'
    - '+.time.*'
    - '+.time.*.*'
    - '+.time.*.*.*'
    - 'time1.*.com'
    - 'time2.*.com'
    - 'time3.*.com'
    - 'time4.*.com'
    - 'time5.*.com'
    - 'time6.*.com'
    - 'time7.*.com'
    - 'ntp1.*.com'
    - 'ntp2.*.com'
    - 'ntp3.*.com'
    - 'ntp4.*.com'
    - 'ntp5.*.com'
    - 'ntp6.*.com'
    - 'ntp7.*.com'
    - '+.ntp.*'
    - '+.ntp.*.*'
    - '+.ntp.*.*.*'
    - '+.lan'
    - '+.localdomain'
    - '+.example'
    - '+.invalid'
    - '+.localhost'
    - '+.test'
    - '+.local'
    - '+.home.arpa'
    - 'time1.cloud.tencent.com'
    - '+.music.163.com'
    - '+.126.net'
    - 'musicapi.taihe.com'
    - 'music.taihe.com'
    - 'songsearch.kugou.com'
    - 'trackercdn.kugou.com'
    - '+.kuwo.cn'
    - 'api-jooxtt.sanook.com'
    - 'api.joox.com'
    - 'joox.com'
    - '+.y.qq.com'
    - 'streamoc.music.tc.qq.com'
    - 'mobileoc.music.tc.qq.com'
    - 'isure.stream.qqmusic.qq.com'
    - 'dl.stream.qqmusic.qq.com'
    - 'aqqmusic.tc.qq.com'
    - 'amobile.music.tc.qq.com'
    - '+.xiami.com'
    - '+.music.migu.cn'
    - '+.msftncsi.com'
    - 'localhost.sec.qq.com'
    - '+.srv.nintendo.net'
    - '+.stun.playstation.net'
    - 'xbox.*.microsoft.com'
    - '+.xboxlive.com'
    - '+.battlenet.com.cn'
    - '+.wotgame.cn'
    - '+.wggames.cn'
    - '+.wowsgame.cn'
    - '+.wargaming.net'
    - 'proxy.golang.org'
    - 'heartbeat.belkin.com'
    - '+.linksys.com'
    - '+.linksyssmartwifi.com'
    - '+.router.asus.com'
    - 'mesu.apple.com'
    - 'swscan.apple.com'
    - 'swquery.apple.com'
    - 'swdownload.apple.com'
    - 'swcdn.apple.com'
    - 'swdist.apple.com'
    - 'lens.l.google.com'
    - 'stun.l.google.com'
    - '+.nflxvideo.net'
    - '+.square-enix.com'
    - '+.finalfantasyxiv.com'
    - '+.ffxiv.com'
    - '+.mcdn.bilivideo.cn'
    - 'WORKGROUP'
{% endif %}

proxies: {{ getClashNodes(nodeList) | json }}

proxy-groups:

- name: {{ customParams.proxyName.Proxy }}
  type: select
  proxies: [{{ customParams.proxyName.Select }},{{ customParams.proxyName.Auto }},{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Reject }}]

- name: {{ customParams.proxyName.Select }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[customParams.proxyName.HongKongSelect, customParams.proxyName.TaiWanSelect, customParams.proxyName.JapanSelect, customParams.proxyName.KoreaSelect, customParams.proxyName.SingaporeSelect, customParams.proxyName.AmericanSelect, customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.Reject }}
  type: select
  proxies: ['REJECT','DIRECT']

- name: {{ customParams.proxyName.Direct }}
  type: select
  proxies: ['DIRECT',{{ customParams.proxyName.Select }},'REJECT']

- name: {{ customParams.proxyName.Auto }}
  type: select
  proxies: {{ getClashNodeNames(nodeList) | json }}

- name: {{ customParams.proxyName.BiliBili }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Spotify }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Telegram }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.proxyName.Direct }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Apple }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Google }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Bing }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.OneDrive }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Teams }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Microsoft }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Reddit }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Company }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Developer }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.OpenAI }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Coze }}
  type: select
  proxies: [{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.PikPak }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.SpeedTest }}
  type: select
  proxies: [{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Proxy }},{{ customParams.allSelect }}]

- name: {{ customParams.proxyName.Final }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.all,[customParams.proxyName.Proxy,customParams.proxyName.Direct,customParams.proxyName.Reject,customParams.proxyName.HongKongSelect,customParams.proxyName.TaiWanSelect,customParams.proxyName.JapanSelect,customParams.proxyName.KoreaSelect,customParams.proxyName.SingaporeSelect,customParams.proxyName.AmericanSelect,customParams.proxyName.OtherSelect]) | json }}

- name: {{ customParams.proxyName.HongKongSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,hkFilter) | json }}

- name: {{ customParams.proxyName.TaiWanSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,taiwanFilter) | json }}

- name: {{ customParams.proxyName.JapanSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,japanFilter) | json }}

- name: {{ customParams.proxyName.KoreaSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,koreaFilter) | json }}

- name: {{ customParams.proxyName.SingaporeSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,singaporeFilter) | json }}

- name: {{ customParams.proxyName.AmericanSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,usFilter) | json }}

- name: {{ customParams.proxyName.OtherSelect }}
  type: select
  proxies: {{ getClashNodeNames(nodeList,customFilters.otherSelectFilter) | json }}

rules:
{% filter clash %}
{{ snippet("../../../packages/rule/snippet/company_rules.tpl").main(customParams.proxyName.Company) }}
{{ snippet("../../../packages/rule/clash/ZhihuAds.tpl").main(customParams.proxyName.Reject) }}
{{ snippet("../../../packages/rule/clash/antiAD.tpl").main(customParams.proxyName.Reject) }}
{{ snippet("../../../packages/rule/snippet/direct_rules.tpl").main(customParams.proxyName.Direct) }}
{{ snippet("../../../packages/rule/clash/Direct.tpl").main(customParams.proxyName.Direct) }}
{{ snippet("../../../packages/rule/clash/WeChat.tpl").main(customParams.proxyName.Direct) }}
{{ snippet("../../../packages/rule/clash/Bilibili.tpl").main(customParams.proxyName.BiliBili) }}
{{ snippet("../../../packages/rule/clash/Apple.tpl").main(customParams.proxyName.Apple) }}
{{ snippet("../../../packages/rule/clash/Pikpak.tpl").main(customParams.proxyName.PikPak) }}
{{ snippet("../../../packages/rule/clash/Google.tpl").main(customParams.proxyName.Google) }}
{{ snippet("../../../packages/rule/clash/Spotify.tpl").main(customParams.proxyName.Spotify) }}
{{ snippet("../../../packages/rule/clash/Telegram.tpl").main(customParams.proxyName.Telegram) }}
{{ snippet("../../../packages/rule/clash/Reddit.tpl").main(customParams.proxyName.Reddit) }}
{{ snippet("../../../packages/rule/snippet/coze_rules.tpl").main(customParams.proxyName.Coze) }}
{{ snippet("../../../packages/rule/clash/Claude.tpl").main(customParams.proxyName.OpenAI) }}
{{ snippet("../../../packages/rule/clash/OpenAI.tpl").main(customParams.proxyName.OpenAI) }}
{{ snippet("../../../packages/rule/clash/GitHub.tpl").main(customParams.proxyName.Developer) }}
{{ snippet("../../../packages/rule/clash/Developer.tpl").main(customParams.proxyName.Developer) }}
{{ snippet("../../../packages/rule/clash/Bing.tpl").main(customParams.proxyName.Bing) }}
{{ snippet("../../../packages/rule/clash/Teams.tpl").main(customParams.proxyName.Teams) }}
{{ snippet("../../../packages/rule/clash/OneDrive.tpl").main(customParams.proxyName.OneDrive) }}
{{ snippet("../../../packages/rule/clash/Microsoft.tpl").main(customParams.proxyName.Microsoft) }}
{{ snippet("../../../packages/rule/clash/SpeedTest.tpl").main(customParams.proxyName.SpeedTest) }}
{% endfilter %}

# Final
- GEOIP,CN,{{ customParams.proxyName.Direct }}
- MATCH,{{ customParams.proxyName.Final }}
