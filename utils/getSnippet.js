const surgeSnippet = require('./ruleDb/surge')
const clashSnippet = require('./ruleDb/clash')

function getRule(platform) {
  const rule = {
    surge: surgeSnippet,
    clash: clashSnippet,
  }
  return rule[platform]
}

/**
 * 生成 rule proxy group 片段
 * @param {"surge"|"clash"} platform 平台
 */
module.exports = function getRuleSnippet(platform, allSelect, allIncludeGroup, isPc = true, other = {}) {
  const func = getRule(platform)
  if (!func)
    throw new Error('platform not found')
  return func(allSelect, allIncludeGroup, isPc, other)
}
