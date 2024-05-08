{% set isShowWarp = customParams.CF_WIREGUARD_PRIVATE_KEY and customParams.CF_WIREGUARD_PUBLICK_KEY %}

{{ customParams.proxyName.Proxy }} = select, {{ customParams.proxyName.Select }},{{ customParams.proxyName.Warp+',' if isShowWarp else "" }} {{ customParams.proxyName.Auto }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Select }} = select, {{ customParams.allSelect }}, update-interval=0, no-alert=0, hidden=0, include-other-group="{{ customParams.allIncludeGroup }}"

{{ customParams.proxyGroupSnippet }}

{% if isShowWarp %}
{{ customParams.proxyName.Warp }} = select, WARP HK, WARP SG, WARP JP, WARP US, WARP Other, no-alert=0, hidden=0, include-all-proxies=0
{% endif %}

{{ customParams.proxyName.CCDN }} = select, {{ customParams.proxyName.Direct }}, {{ customParams.allSelect }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.GCDN }} = select, {{ customParams.proxyName.Proxy }}, DIRECT, {{ customParams.allSelect }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Direct }} = select, DIRECT,{{ customParams.proxyName.Select }}, REJECT, no-alert=0, hidden=0
{{ customParams.proxyName.Reject }} = select, REJECT, REJECT-TINYGIF, DIRECT, no-alert=0, hidden=0, include-all-proxies=0
{{ customParams.proxyName.Final }} = select, {{ customParams.proxyName.Proxy }}, {{ customParams.allSelect }}, {{ customParams.proxyName.Direct }}, {{ customParams.proxyName.Reject }}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.Auto }} = {{ "smart" if customParams.isSmart else "select" }}, url={{ proxyTestUrl }}, update-interval=86400, timeout=0, interval=300, tolerance=0, no-alert=1, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.allIncludeGroup }}"
{{ customParams.proxyName.SubNodesSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, include-all-proxies=1, policy-regex-filter=^(?!.*((?i)回国|校园|游戏|教育|官网|客服|网站|网址|获取|订阅|流量|到期|机场|下次|版本|官址|备用|群|GAME|TG|traffic|expire|WARP)).*$, policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.HongKongSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇭🇰|港|虚通|HK|Hong)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.TaiWanSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇹🇼|台|TW|Tai)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.JapanSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=(?=.*(🇯🇵|日本|川日|东京|大阪|泉日|埼玉|JP|Japan).)^((?!(2x|3x|4x|5x|6x|7x|8x|9x|10x)).)*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.KoreaSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇰🇷|韩|韓|首尔|KR|Korea)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.SingaporeSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇸🇬|新加坡|狮|SG|Singapore)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.AmericanSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=(?=.*(🇺🇸|美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|US|UnitedStates).)^((?!(2x|3x|4x|5x|6x|7x|8x|9x|10x)).)*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.EuropeSelect }} = {{ "smart" if customParams.isSmart else "select" }}, no-alert=0, hidden=0, policy-regex-filter=^(?=.*((?i)🇬🇧|英|🇫🇷|法|🇩🇪|德|🇳🇱|荷兰|🇵🇹|葡萄牙|🇪🇸|西班牙|🇺🇦|乌克兰|🇮🇹|意大利|🇷🇺|🇱🇺|卢森堡)).*$, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}", policy-priority="「Flower」:0.5;「FishP」:9999;「Fish」:0.6;「Cat」:0.4;「MoJie」:9999"
{{ customParams.proxyName.OtherSelect }} = select, policy-regex-filter=^(?!.*((?i)🇭🇰|🇨🇳|🇯🇵|🇰🇷|🇸🇬|🇺🇸|🇬🇧|🇫🇷|🇩🇪|🇳🇱|🇵🇹|🇪🇸|🇺🇦|🇮🇹|🇷🇺|🇱🇺)).*$, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="{{ customParams.proxyName.SubNodesSelect }}"

