const headers = new Headers()
headers.append('Content-Type', 'application/json')
function initSetting(apiUrl, githubUser, gistToken) {
  return new Promise((resolve) => {
    fetch(`${apiUrl}/api/settings`, {
      headers,
      method: 'PATCH',
      body: JSON.stringify({
        githubUser,
        gistToken,
      }),
      // redirect: 'follow',
    }).then(response => response.json())
      .then((result) => {
        if (result.status !== 'success') {
          console.error('sub-store init config error')
          resolve(false)
        }
        else {
          resolve(true)
        }
      })
      .catch((error) => {
        resolve(false)
        console.error('error', error)
      })
  })
}
/**
 * @param {'download'|'upload'} action
 */
function configAction(apiUrl, action = 'download') {
  const requestOptions = {
    // headers,
    method: 'GET',
    redirect: 'follow',
  }

  fetch(`${apiUrl}/api/utils/backup?action=${action}`, requestOptions)
    .then(response => response.json())
    .then((result) => {
      if (result.status !== 'success')
        console.error('sub-store download config error')
    })
    .catch(error => console.error('error', error))
}

module.exports = { initSetting, configAction }
