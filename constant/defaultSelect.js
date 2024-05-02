const proxyName = require('./proxyName.js')
const { CF_WIREGUARD_PUBLICK_KEY, CF_WIREGUARD_PRIVATE_KEY } = require('./config.js')

const { Warp, Select, HongKongSelect, TaiWanSelect, JapanSelect, KoreaSelect, SingaporeSelect, AmericanSelect, EuropeSelect, OtherSelect, SubNodesSelect } = proxyName
/**
 * 获取所有的select
 * @param {'surge'|'loon'|'clash'} platform 平台
 */
function getAllSelect(platform) {
  const select = [HongKongSelect, TaiWanSelect, JapanSelect, KoreaSelect, SingaporeSelect, AmericanSelect, EuropeSelect, OtherSelect, SubNodesSelect]
  let str = ''
  if (['surge', 'loon'].includes(platform) && CF_WIREGUARD_PUBLICK_KEY && CF_WIREGUARD_PRIVATE_KEY)
    select.push(Warp)

  if (['clash'].includes(platform))
    select.unshift(Select)

  str = select.map(item => `${item}`).join(', ')
  return str
}

/**
 * 获取所有的select
 * @param {'surge'|'loon'|'clash'} platform 平台
 */
function getAllIncludeGroup(platform) {
  const select = [SubNodesSelect]
  let str = ''
  switch (platform) {
    case 'surge':
      // select.unshift(Warp)
      str = select.map(item => `${item}`).join(', ')
      break
    case 'clash':
      str = select.map(item => `${item}`).join(', ')
      break
    case 'loon':
      str = 'WARP HK, WARP JP, WARP SG, WARP US, WARP OTHER, AllNode'
      break
  }
  return str
}

module.exports = {
  getAllSelect,
  getAllIncludeGroup,
}
