const icon = require('./proxyNameImage')

const policyPriority = `"↑:99999;「❎」:0.6;「🐱」:0.2;「🌸」:1;「🐟」:0.5;「🐟P」:99999;「💍」:99999"`
const proxyNameConfig = {
  Proxy: {
    name: '🐷 Proxy',
    proxyOptions: {
      'policy-group': ``,
      'icon-url': icon.Proxy,
    },
  },
  Wifi: { name: '👀 Wifi' },
  Select: { name: '🌀 Select', proxyOptions: {
    'policy-group': ``,
  } },
  BiliBili: { name: '📺 BiliBili', proxyOptions: {
    'icon-url': icon.BiliBili,
  } },
  NeteaseMusic: { name: '🎧 NeteaseMusic' },
  Company: { name: '💼 Company', proxyOptions: {
    'icon-url': icon.Company,
  } },
  AppStore: { name: '🍎 AppStore' },
  Apple: { name: '🍎 Apple', proxyOptions: {
    'icon-url': icon.Apple,
  } },
  Coze: { name: '👽 Coze', proxyOptions: {
    'icon-url': icon.Coze,
  } },
  OpenAI: { name: '🎉 OpenAI', proxyOptions: {
    'icon-url': icon.OpenAI,
  } },
  Developer: { name: '👨‍💻 Developer', proxyOptions: {
    'icon-url': icon.Developer,
  } },
  Spotify: { name: '🎶 Spotify', proxyOptions: {
    'icon-url': icon.Spotify,
  } },
  Emby: { name: '🎞 Emby', proxyOptions: {
    'icon-url': icon.Emby,
  } },
  Performance: { name: '💪 Performance', proxyOptions: {
    'icon-url': icon.Performance,
  } },
  Telegram: { name: '✈️ Telegram', proxyOptions: {
    'icon-url': icon.Telegram,
  } },
  PikPak: { name: '📂 PikPak', proxyOptions: {
    'icon-url': icon.PikPak,
  } },
  Notion: { name: '📖 Notion', proxyOptions: {
    'icon-url': icon.Notion,
  } },
  TikTok: { name: '📽 TikTok', proxyOptions: {
    'icon-url': icon.TikTok,
  } },
  DouYin: { name: '📽 DouYin' },
  Google: { name: '🔍 Google', proxyOptions: {
    'icon-url': icon.Google,
  } },
  GoogleDriver: { name: '📂 Google Driver' },
  GoogleVoice: { name: '📞 GoogleVoice' },
  Bing: { name: '🔎 Bing' },
  Teams: { name: '🗣️ Teams' },
  OneDrive: { name: '📁 OneDrive' },
  Microsoft: { name: 'Ⓜ️ Microsoft' },
  Download: { name: '⬇️ Download' },
  Reddit: { name: '🤖 Reddit' },
  Game: { name: '🎮 Game' },
  SpeedTest: { name: '🚀 SpeedTest', proxyOptions: {
    'icon-url': icon.SpeedTest,
  } },
  GCDN: { name: '🚀 GCDN', proxyOptions: {
    'icon-url': icon.GCDN,
  } },
  CCDN: { name: '🚀 CCDN', proxyOptions: {
    'icon-url': icon.CCDN,
  } },
  Warp: { name: '☁️ Warp', proxyOptions: {
    'policy-group': 'WARP HK, WARP SG, WARP JP, WARP US, WARP Other',
    'include-other-group': null,
    'include-all-proxies': 0,
    'icon-url': icon.Warp,
  } },
  Auto: { name: '🚦 Auto', proxyOptions: { 'policy-group': '' } },
  Direct: { name: '🎯 DIRECT', proxyOptions: { 'include-other-group': null, 'icon-url': icon.Direct } },
  Reject: { name: '🛑 REJECT', proxyOptions: { 'include-other-group': null, 'icon-url': icon.Reject } },
  Final: { name: '🐟 Final', proxyOption: { 'icon-url': icon.Final } },
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
      'icon-url': icon.HongKongSelect,
    },
  },
  TaiWanSelect: {
    name: '🇨🇳 Taiwan',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇹🇼|台|TW|Tai)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.TaiWanSelect,
    },
  },
  JapanSelect: {
    name: '🇯🇵 Japan',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇯🇵|日本|川日|东京|大阪|泉日|埼玉|JP|Japan)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.JapanSelect,
    },
  },
  KoreaSelect: {
    name: '🇰🇷 Korea',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇰🇷|韩|韓|首尔|KR|Korea)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.KoreaSelect,
    },
  },
  SingaporeSelect: {
    name: '🇸🇬 Singapore',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇸🇬|新加坡|狮|SG|Singapore)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.SingaporeSelect,
    },
  },

  AmericanSelect: {
    name: '🇺🇸 American',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇺🇸|美|波特兰|达拉斯|俄勒冈|凤凰城|费利蒙|硅谷|拉斯维加斯|洛杉矶|圣何塞|圣克拉拉|西雅图|芝加哥|US|UnitedStates)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.AmericanSelect,
    },
  },

  EuropeSelect: {
    name: '🇪🇺 Europe',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)🇬🇧|英|🇫🇷|法|🇩🇪|德|🇳🇱|荷兰|🇵🇹|葡萄牙|🇪🇸|西班牙|🇺🇦|乌克兰|🇮🇹|意大利|🇷🇺|🇱🇺|卢森堡)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.EuropeSelect,
    },
  },

  OtherSelect: {
    name: '🏴‍☠️ Other-Area',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?!.*((?i)🇭🇰|🇨🇳|🇯🇵|🇰🇷|🇸🇬|🇺🇸|🇬🇧|🇫🇷|🇩🇪|🇳🇱|🇵🇹|🇪🇸|🇺🇦|🇮🇹|🇷🇺|🇱🇺)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.OtherSelect,
    },
  },

  LowMagnification: {
    name: '↓ low-magnification',
    proxyOptions: {
      'policy-group': '',
      'type': 'smart',
      'policy-regex-filter': '^(?=.*((?i)↓)).*$',
      'policy-priority': policyPriority,
      'icon-url': icon.LowMagnification,
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
