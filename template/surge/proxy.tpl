{% set isShowWarp = customParams.CF_WIREGUARD_PRIVATE_KEY and customParams.CF_WIREGUARD_PUBLICK_KEY %}

{{ getSurgeNodes(nodeList) }}
{% if isShowWarp %}
WARP HK = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.HongKongSelect }}, test-url={{ proxyTestUrl }}
WARP US = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.AmericanSelect }}, test-url={{ proxyTestUrl }}
WARP SG = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.SingaporeSelect }}, test-url={{ proxyTestUrl }}
WARP JP = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.JapanSelect }}, test-url={{ proxyTestUrl }}
WARP Other = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.OtherSelect }}, test-url={{ proxyTestUrl }}
{% endif %}
