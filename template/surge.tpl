# {{ downloadUrl }}

[General] 
{% include "surge/general.tpl" %}

[Host]
{% include "surge/host.tpl" %}

[Ponte]
{% include "surge/ponte.tpl" %}

[Proxy]
{% include "surge/proxy.tpl" %}

[Proxy Group]
{% include "surge/proxyGroup.tpl" %}

[Rule]
{% include "surge/rule.tpl" %}

[MITM]
{% include "surge/mitm.tpl" %}

[Script]
{% include "surge/script.tpl" %}


{% set isShowWarp = customParams.CF_WIREGUARD_PRIVATE_KEY and customParams.CF_WIREGUARD_PUBLICK_KEY %}

{% if isShowWarp %}
[WireGuard Cloudflare]
private-key = {{ customParams.CF_WIREGUARD_PRIVATE_KEY }}
self-ip = 172.16.0.2
self-ip-v6 = 2606:4700:110:82d2:e82f:bc66:3d14:dba1
dns-server = 162.159.36.1, 2606:4700:4700::1111
mtu = 1280
peer = (public-key = {{ customParams.CF_WIREGUARD_PUBLICK_KEY }}, allowed-ips = "0.0.0.0/0, ::0/0", endpoint = engage.cloudflareclient.com:2408, keepalive = 45, client-id = 136/51/216)
{% endif %}
