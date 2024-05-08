const { locationList } = require('./location')

/**
 * 通过传入的名称获取对应的国旗
 * @param {string} name
 */
function getFlag(name) {
  let flag = '🏴‍☠️'
  for (let i = 0; i < locationList.length; i++) {
    const regString
      = locationList[i].flag && !locationList[i].ignoreFlag
        ? `${locationList[i].flag}|${locationList[i].reg}`
        : locationList[i].reg
    const locationReg = new RegExp(regString, 'gi')
    if (locationReg.test(name)) {
      flag = locationList[i].flag || '🏴‍☠️'
      break
    }
  }
  return flag
}

/**
 * 获取节点的倍率
 * @param {string} name
 * @return {number} -1: 低倍率, 0: 正常倍率, 1: 高倍率
 */
function getMagnification(name) {
  const reg
  = /(x|×)?(v?[0-9]\d*\.?\d*(x|倍|×)?)|(x|×)?(0\.\d*[0-9])(x|倍|×)??$/gi
  const result = name.match(reg) || []
  const replaceList = ['1倍率', '1倍', '1x', '1X', '1×', 'x1', 'X1', '×1']
  replaceList.forEach((replaceStr) => {
    if (result.includes(replaceStr))
      result.splice(result.indexOf(replaceStr), 1)
  })
  if (result.length === 0)
    return 0
  // 去除字符串所有空格
  const num = result.pop().replace('倍', 'x').replace('×', 'x').replace('X', 'x').replace(/\s*/g, '')
  if (num.startsWith('x') || num.endsWith('x')) {
    const n = num.replace('x', '')
    const nNum = Number(n)
    return nNum || 1
  }
  return 1
}

module.exports = { getFlag, getMagnification }
