{% set isShowWarp = customParams.CF_WIREGUARD_PRIVATE_KEY and customParams.CF_WIREGUARD_PUBLICK_KEY %}

{{ getLoonNodes(nodeList) }}
{% if isShowWarp %}
WARP = WireGuard,interface-ip=172.16.0.2,interface-ipv6=2606:4700:110:82d2:e82f:bc66:3d14:dba1,private-key="{{ customParams.CF_WIREGUARD_PRIVATE_KEY }}",mtu=1280,dns=162.159.36.1,dnsv6=2606:4700:4700::1111,keepalive=45,peers=[{public-key="{{ customParams.CF_WIREGUARD_PUBLICK_KEY }}",allowed-ips="0.0.0.0/0,::/0",endpoint=engage.cloudflareclient.com:2408,reserved=[136,51,216]}]
{% endif %}
