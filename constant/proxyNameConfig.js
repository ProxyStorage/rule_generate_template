const policyPriority = `"↑:99999;「❎」:0.6;「🐱」:0.2;「🌸」:1;「🐟」:0.5;「🐟P」:99999;「💍」:99999"`
const proxyNameConfig = {
  Proxy: {
    name: '🐷 Proxy',
    proxyOptions: {
      'policy-group': ``,
    },
  },
  Wifi: { name: '👀 Wifi' },
  Select: { name: '🌀 Select', proxyOptions: {
    'policy-group': ``,
  } },
  BiliBili: { name: '📺 BiliBili' },
  NeteaseMusic: { name: '🎧 NeteaseMusic' },
  Company: { name: '💼 Company' },
  AppStore: { name: '🍎 AppStore' },
  Apple: { name: '🍎 Apple' },
  Coze: { name: '👽 Coze' },
  OpenAI: { name: '🎉 OpenAI' },
  Developer: { name: '👨‍💻 Developer' },
  Emby: { name: '🎞 Emby' },
  Performance: { name: '💪 Performance' },
  Telegram: { name: '✈️ Telegram' },
  PikPak: { name: '📂 PikPak' },
  Notion: { name: '📖 Notion' },
  TikTok: { name: '📽 TikTok' },
  DouYin: { name: '📽 DouYin' },
  Google: { name: '🔍 Google' },
  GoogleDriver: { name: '📂 Google Driver' },
  GoogleVoice: { name: '📞 GoogleVoice' },
  Bing: { name: '🔎 Bing' },
  Teams: { name: '🗣️ Teams' },
  OneDrive: { name: '📁 OneDrive' },
  Microsoft: { name: 'Ⓜ️ Microsoft' },
  Download: { name: '⬇️ Download' },
  Spotify: { name: '🎶 Spotify' },
  Reddit: { name: '🤖 Reddit' },
  Game: { name: '🎮 Game' },
  SpeedTest: { name: '🚀 SpeedTest' },
  GCDN: { name: '🚀 GCDN' },
  CCDN: { name: '🚀 CCDN' },
  Warp: { name: '☁️ Warp', proxyOptions: { 'policy-group': 'WARP HK, WARP SG, WARP JP, WARP US, WARP Other', 'include-other-group': null, 'include-all-proxies': 0 } },
  Auto: { name: '🚦 Auto', proxyOptions: { 'policy-group': '' } },
  Direct: { name: '🎯 DIRECT', proxyOptions: { 'include-other-group': null } },
  Reject: { name: '🛑 REJECT', proxyOptions: { 'include-other-group': null } },
  Final: { name: '🐟 Final' },
  SubNodesSelect: {
    name: '🏳️‍🌈 SubNodes',
    proxyOptions: {
      'type': 'smart',
      'policy-group': '',
      'include-all-proxies': 0,
      'policy-path': 'https://sub.store/download/collection/node?target=Surge',
      'update-interval': -1,
      'include-other-group': null,
      'policy-regex-filter': '^(?!.*((?i)回国|校园|游戏|教育|官网|客服|网站|网址|获取|订阅|流量|到期|机场|下次|版本|官址|备用|群|GAME|TG|traffic|expire|WARP)).*$',
      'policy-priority': policyPriority,
    },
  },
  HongKongSelect: {
    name: '🇭🇰 HongKong',
    proxyOptions: {
      'type': 'smart',
      'policy-group': '',
      'policy-regex-filter': '^(?=.*((?i)🇭🇰|港|虚通|HK|Hong)).*$',
      'policy-priority': policyPriority,
    },
  },
  TaiWanSelect: {
    name: '🇨🇳 Taiwan',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇹🇼|台|TW|Tai)).*$',
      'policy-priority': policyPriority,
    },
  },

  JapanSelect: {
    name: '🇯🇵 Japan',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇯🇵|日本|川日|东京|大阪|泉日|埼玉|JP|Japan)).*$',
      'policy-priority': policyPriority,
    },
  },

  KoreaSelect: {
    name: '🇰🇷 Korea',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇰🇷|韩|韓|首尔|KR|Korea)).*$',
      'policy-priority': policyPriority,
    },
  },

  SingaporeSelect: {
    name: '🇸🇬 Singapore',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇸🇬|新加坡|狮|SG|Singapore)).*$',
      'policy-priority': policyPriority,
    },
  },

  AmericanSelect: {
    name: '🇺🇸 American',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇺🇸|美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|US|UnitedStates)).*$',
      'policy-priority': policyPriority,
    },
  },

  EuropeSelect: {
    name: '🇪🇺 Europe',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇬🇧|英|🇫🇷|法|🇩🇪|德|🇳🇱|荷兰|🇵🇹|葡萄牙|🇪🇸|西班牙|🇺🇦|乌克兰|🇮🇹|意大利|🇷🇺|🇱🇺|卢森堡)).*$',
      'policy-priority': policyPriority,
    },
  },

  OtherSelect: {
    name: '🏴‍☠️ Other-Area',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?!.*((?i)🇭🇰|🇨🇳|🇯🇵|🇰🇷|🇸🇬|🇺🇸|🇬🇧|🇫🇷|🇩🇪|🇳🇱|🇵🇹|🇪🇸|🇺🇦|🇮🇹|🇷🇺|🇱🇺)).*$',
      'policy-priority': policyPriority,
    },
  },

  LowMagnification: {
    name: '↓ low-magnification',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)↓)).*$',
      'policy-priority': policyPriority,
    },
  },

}

proxyNameConfig.Proxy.proxyOptions['policy-group'] += `DIRECT,`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.HongKongSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.TaiWanSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.JapanSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.KoreaSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.SingaporeSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.AmericanSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.EuropeSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.OtherSelect.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.LowMagnification.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `${proxyNameConfig.Warp.name},`
proxyNameConfig.Proxy.proxyOptions['policy-group'] += `REJECT`

proxyNameConfig.Direct.proxyOptions['policy-group'] = `DIRECT, ${proxyNameConfig.Proxy.name}, REJECT`
proxyNameConfig.Reject.proxyOptions['policy-group'] = `REJECT, ${proxyNameConfig.Proxy.name}, DIRECT`

module.exports = proxyNameConfig
