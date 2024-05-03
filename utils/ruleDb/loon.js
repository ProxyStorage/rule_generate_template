const proxyName = require('../../constant/proxyName')
const { getRuleList, blackProxyName } = require('./rule')

function processSurgeData(platform, isPc = true) {
  const list = getRuleList(platform)
  const domainRuleList = []
  const noIPRuleList = []
  const ipRuleList = []
  const localRuleList = []
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
      domainRuleList.push(`${item.files.domain}, policy=${item.proxyName}, tag=${item.proxyName}, parser-enable=true, enabled=true`)
    if (item.files.noIp)
      noIPRuleList.push(`${item.files.noIp}, policy=${item.proxyName}, tag=${item.proxyName}, parser-enable=true, enabled=true`)
    if (item.after)
      localRuleList.push(item.after)

    if (item.files.ip)
      ipRuleList.push(`${item.files.ip}, policy=${item.proxyName}, tag=${item.proxyName}, parser-enable=true, enabled=true`)
    if (item.files.asn)
      ipRuleList.push(`${item.files.asn}, policy=${item.proxyName}, tag=${item.proxyName}, parser-enable=true, enabled=true`)

    if (!blackProxyName.includes(item.proxyName))
      proxyGroupKey.add(item.proxyName)
  }
  return { domainRuleList, noIPRuleList, ipRuleList, localRuleList, proxyGroupKey }
}

function loonSnippet(allSelect, allIncludeGroup, isPc = true) {
  const { domainRuleList, noIPRuleList, ipRuleList, localRuleList, proxyGroupKey } = processSurgeData('loon', isPc)
  const ruleSnippet = `${domainRuleList.join('\n')}\n${noIPRuleList.join('\n')}\n${ipRuleList.join('\n')}`
  let proxyGroupSnippet = ''
  let localRuleSnippet = ''

  proxyGroupKey.forEach((name) => {
    // proxyGroupSnippet += `${name} = select, ${proxyName.Proxy}, ${proxyName.Direct}, ${allSelect}, ${proxyName.Reject}, no-alert=0, hidden=0, include-all-proxies=0, include-other-group="${allIncludeGroup}"
    proxyGroupSnippet += `${name} = select,${proxyName.Direct},${proxyName.Proxy},${allSelect},${allIncludeGroup}
`
  })
  localRuleList.forEach((item) => {
    localRuleSnippet += `${item}
`
  })
  return { ruleSnippet, proxyGroupSnippet, localRuleSnippet }
}

module.exports = loonSnippet
