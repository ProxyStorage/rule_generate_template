{{ customParams.proxyName.Proxy }} = select,{{ customParams.proxyName.Select }},{{ customParams.proxyName.Warp }},{{ customParams.proxyName.Auto }},{{ customParams.proxyName.Direct }},{{ customParams.proxyName.Reject }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Proxy.png
{{ customParams.proxyName.Select }} = select,{{ customParams.proxyName.Direct }},{{ customParams.allSelect }},{{ customParams.allIncludeGroup }},AllNode,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/apps/select.png
{{ customParams.proxyName.Auto }} = url-test,AllNode,url = {{ proxyTestUrl }},interval = 600,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Auto.png

{{ customParams.proxyGroupSnippet }}

{{ customParams.proxyName.CCDN }} = select,DIRECT,{{ customParams.proxyName.Proxy }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Direct.png
{{ customParams.proxyName.GCDN }} = select,{{ customParams.proxyName.Proxy }},DIRECT,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Proxy.png
{{ customParams.proxyName.Direct }} = select,DIRECT,{{ customParams.proxyName.Reject }},{{ customParams.proxyName.Proxy }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Direct.png
{{ customParams.proxyName.Reject }} = select,REJECT,DIRECT,{{ customParams.proxyName.Proxy }},img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/erdongchanyo/Reject.png
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
{{ customParams.proxyName.LowMagnification }} = select,LowMagnification,img-url = https://raw.githubusercontent.com/fmz200/wool_scripts/main/icons/Twoandz9/Xiaoheizi.png
