{{ getSurgeNodes(nodeList) }}
WARP HK = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.HongKongSelect }}, test-url={{ proxyTestUrl }}
WARP US = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.AmericanSelect }}, test-url={{ proxyTestUrl }}
WARP SG = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.SingaporeSelect }}, test-url={{ proxyTestUrl }}
WARP JP = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.JapanSelect }}, test-url={{ proxyTestUrl }}
WARP Other = wireguard, section-name=Cloudflare, underlying-proxy={{ customParams.proxyName.OtherSelect }}, test-url={{ proxyTestUrl }}
