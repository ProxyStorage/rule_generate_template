/**
 * 初始化substore数据
 */

const { initSetting, configAction } = require('../utils/subStore')

const { SUBSTORE_GIT_USER, SUBSTORE_GIST_TOKEN, SUBSTORE_API_URL } = require('../constant/env')

async function main() {
  if (SUBSTORE_GIT_USER && SUBSTORE_GIST_TOKEN && SUBSTORE_API_URL) {
    console.log('初始化substore数据')
    const r = await initSetting(SUBSTORE_API_URL, SUBSTORE_GIT_USER, SUBSTORE_GIST_TOKEN)
    console.log('初始化substore结果', r)
    if (r)
      await configAction(SUBSTORE_API_URL)
  }
}
main()
