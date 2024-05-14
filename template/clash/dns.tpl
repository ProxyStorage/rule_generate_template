dns:
  listen: 0.0.0.0:53
  default-nameserver: 
    {{ (customParams.dns_server | yaml) | indent(4)}}
  nameserver: 
    {{ (customParams.encrypt_dns_server | yaml) | indent(4)}}
  fallback: 
    - https://8.8.8.8/dns-query
    - https://8.8.4.4/dns-query
    - tls://1.0.0.1:853
    - tls://dns.google:853
    {{ (customParams.encrypt_dns_server | yaml) | indent(4)}}
  fallback-filter:
    geoip: true
    geoip-code: CN
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
    - 'injections.adguard.org'
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
  nameserver-policy:
    {{ remoteSnippets.clashDnsMap.text | indent(4) }}
    {{ remoteSnippets.clashDnsMapGithub.text | indent(4) }}
