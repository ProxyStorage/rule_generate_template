const proxyName = require('../../constant/proxyName')
const { getRuleList, blackProxyName } = require('./rule')

function processSurgeData(platform, isPc = true) {
  const list = getRuleList(platform)
  const domainRuleList = []
  const noIPRuleList = []
  const ipRuleList = []
  const proxyGroupKey = new Set()
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
    if (item.files.domain)
      domainRuleList.push(`DOMAIN-SET,${item.files.domain} ,${item.proxyName}`)
    if (item.files.noIp)
      noIPRuleList.push(`RULE-SET,${item.files.noIp} ,${item.proxyName}`)
    if (item.after)
      noIPRuleList.push(item.after)

    if (item.files.ip)
      ipRuleList.push(`RULE-SET,${item.files.ip} ,${item.proxyName}`)
    if (item.files.asn)
      ipRuleList.push(`RULE-SET,${item.files.asn} ,${item.proxyName}`)

    if (!blackProxyName.includes(item.proxyName))
      proxyGroupKey.add(item.proxyName)
  }
  return { domainRuleList, noIPRuleList, ipRuleList, proxyGroupKey }
}

function surgeSnippet(allSelect, allIncludeGroup, isPc = true) {
  const { domainRuleList, noIPRuleList, ipRuleList, proxyGroupKey } = processSurgeData('surge', isPc)
  const ruleSnippet = `${domainRuleList.join('\n')}\n${noIPRuleList.join('\n')}\n${ipRuleList.join('\n')}`
  let proxyGroupSnippet = ''

  proxyGroupKey.forEach((name) => {
    proxyGroupSnippet += `${name} = select, ${proxyName.Proxy}, ${proxyName.Direct}, ${allSelect}, ${proxyName.Reject}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="${allIncludeGroup}"
`
  })

  return { ruleSnippet, proxyGroupSnippet }
}

module.exports = surgeSnippet
