/* eslint-disable no-console */
const fs = require('node:fs')
const path = require('node:path')
const YAML = require('yamljs')
const axios = require('axios')

function loadRemoteFile(url) {
  return new Promise((resolve) => {
    axios.get(url).then((response) => {
      resolve(response.data)
    }).catch((error) => {
      console.log(`${url} is error => ${error.message}`)
    })
  })
}
function parseYaml(yamlString) {
  try {
    const yamlObj = YAML.parse(yamlString)
    return yamlObj.payload.join('\n')
  }
  catch (e) {
    return yamlString
  }
}

function saveTpl(fileName, data) {
  fs.writeFile(fileName, data, (err) => {
    if (err)
      return console.log(err.message)

    console.log(`${fileName} was saved!`)
  })
}

function main() {
  const baseUrl = 'https://cdn.jsdelivr.net/gh/blackmatrix7/ios_rule_script@master/rule/Clash'
  const urlMap = {
    Advertising_Domain: `${baseUrl}/Advertising/Advertising_Domain.yaml`,
    Advertising: `${baseUrl}/Advertising/Advertising.yaml`,
    antiAD: 'https://cdn.jsdelivr.net/gh/privacy-protection-tools/anti-AD@master/anti-ad-surge.txt',
    Apple: `${baseUrl}/Apple/Apple.yaml`,
    Bilibili: `${baseUrl}/BiliBili/BiliBili.yaml`,
    Bing: `${baseUrl}/Bing/Bing.yaml`,
    Claude: `${baseUrl}/Claude/Claude.yaml`,
    Developer: `${baseUrl}/Developer/Developer.yaml`,
    Direct: `${baseUrl}/Direct/Direct.yaml`,
    DouYin: `${baseUrl}/DouYin/DouYin.yaml`,
    GitHub: `${baseUrl}/GitHub/GitHub.yaml`,
    Google: `${baseUrl}/Google/Google.yaml`,
    Hijacking: `${baseUrl}/Hijacking/Hijacking.yaml`,
    Lan: `${baseUrl}/Lan/Lan.yaml`,
    Microsoft: `${baseUrl}/Microsoft/Microsoft.yaml`,
    NetEaseMusic: `${baseUrl}/NetEaseMusic/NetEaseMusic.yaml`,
    OneDrive: `${baseUrl}/OneDrive/OneDrive.yaml`,
    OpenAI: `${baseUrl}/OpenAI/OpenAI.yaml`,
    Pikpak: `${baseUrl}/PikPak/PikPak.yaml`,
    Privacy_Domain: `${baseUrl}/Privacy/Privacy_Domain.yaml`,
    Privacy: `${baseUrl}/Privacy/Privacy.yaml`,
    Reddit: `${baseUrl}/Reddit/Reddit.yaml`,
    SpeedTest: `${baseUrl}/Speedtest/Speedtest.yaml`,
    Spotify: `${baseUrl}/Spotify/Spotify.yaml`,
    Teams: `${baseUrl}/Teams/Teams.yaml`,
    Telegram: `${baseUrl}/Telegram/Telegram.yaml`,
    TikTok: `${baseUrl}/TikTok/TikTok.yaml`,
    WeChat: `${baseUrl}/WeChat/WeChat.yaml`,
    ZhihuAds: `${baseUrl}/ZhihuAds/ZhihuAds.yaml`,
  }
  const urlListMap = {
    adrules: 'https://adrules.top/adrules.list',
  }
  Object.entries(urlMap).forEach(([fileName, url]) => {
    loadRemoteFile(url)
      .then(parseYaml).then((data) => {
        saveTpl(path.join(__dirname, `./clash/${fileName}.tpl`), data)
      })
  })
  Object.entries(urlListMap).forEach(([fileName, url]) => {
    loadRemoteFile(url)
      .then((data) => {
        saveTpl(path.join(__dirname, `./clash/${fileName}.tpl`), data)
      })
  })
}
main()
