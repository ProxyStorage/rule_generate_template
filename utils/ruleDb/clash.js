const YAML = require('yaml')
const proxyName = require('../../constant/proxyName')
const { getRuleList, blackProxyName } = require('./rule')

function processClashData(platform, isPc = true) {
  const list = getRuleList(platform)
  const domainRuleList = []
  const noIPRuleList = []
  const ipRuleList = []
  const proxyGroupKey = new Set()
  const ruleProviderList = new Map()
  const allList = [
    ...list.white,
    ...list.black,
    ...list.domesticApp,
    ...list.globalApp,
  ]
  for (let i = 0; i < allList.length; i++) {
    const item = allList[i]
    if (!item)
      continue
    if (item?.onlyPc && !isPc)
      continue
    if (item.files.domain) {
      const fileUrl = item.files.domain
      const fileName = fileUrl.split('/').pop().replace('.list', '')
      domainRuleList.push(`DOMAIN,${fileName} ,${item.proxyName}`)
      if (ruleProviderList.has(fileName)) {
        console.error(`[Error] ${fileName} is already exist,已存在值为${ruleProviderList.get(fileName).url}，现在为${item.files.domain}`)
      }
      else {
        ruleProviderList.set(
          fileName,
          {
            type: 'http',
            behavior: 'domain',
            format: 'text',
            interval: 43200,
            url: item.files.domain,
            path: `./DreamyTZK/${fileName}.list`,
          },
        )
      }
    }

    if (item.files.noIp) {
      const fileUrl = item.files.noIp
      const fileName = fileUrl.split('/').pop().replace('.list', '')
      noIPRuleList.push(`RULE-SET,${fileName} ,${item.proxyName}`)
      if (ruleProviderList.has(fileName)) {
        console.error(`[Error] ${fileName} is already exist,已存在值为${ruleProviderList.get(fileName).url}，现在为${item.files.noIp}`)
      }
      else {
        ruleProviderList.set(
          fileName,
          {
            type: 'http',
            behavior: 'classical',
            format: 'text',
            interval: 43200,
            url: item.files.noIp,
            path: `./DreamyTZK/${fileName}.list`,
          },
        )
      }
    }

    if (item.files.ip) {
      const fileUrl = item.files.ip
      const fileName = fileUrl.split('/').pop().replace('.list', '')
      ipRuleList.push(`RULE-SET,${fileName} ,${item.proxyName}`)
      if (ruleProviderList.has(fileName)) {
        console.error(`[Error] ${fileName} is already exist,已存在值为${ruleProviderList.get(fileName).url}，现在为${item.files.ip}`)
      }
      else {
        ruleProviderList.set(
          fileName,
          {
            type: 'http',
            behavior: 'classical',
            format: 'text',
            interval: 43200,
            url: item.files.ip,
            path: `./DreamyTZK/${fileName}.list`,
          },
        )
      }
    }

    if (!blackProxyName.includes(item.proxyName))
      proxyGroupKey.add(item.proxyName)
  }
  return { domainRuleList, noIPRuleList, ipRuleList, proxyGroupKey, ruleProviderList }
}

function clashSnippet(allSelect, allIncludeGroup, isPc = true) {
  return (allProxy) => {
    const { domainRuleList, noIPRuleList, ipRuleList, proxyGroupKey, ruleProviderList } = processClashData('clash', isPc)
    const proxyGroupList = []
    proxyGroupKey.forEach((name) => {
      proxyGroupList.push({
        name,
        type: 'select',
        proxies: [proxyName.Proxy, proxyName.Direct, ...allSelect.split(',').map(item => item.trim()), ...allProxy],
      })
    })
    const ruleList = [...domainRuleList, ...noIPRuleList, ...ipRuleList]

    const proxyGroupSnippet = YAML.stringify(proxyGroupList)
    const ruleSnippet = YAML.stringify(ruleList)
    const providerSnippet = YAML.stringify({ 'rule-providers': ruleProviderList })

    return { ruleSnippet, proxyGroupSnippet, providerSnippet }
  }
}

module.exports = clashSnippet
