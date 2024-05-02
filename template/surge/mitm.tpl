skip-server-cert-verify = true
tcp-connection = true
h2 = true
hostname = sub.store, music.163.com, -*.facebook.com, -*.instagram.com, -*.twitter.com, -*.tiktokv.com, -*.snssdk.com, -*.pstatp.com
hostname-disabled = {{ remoteSnippets.surgeDisableHostName.text }}
ca-passphrase = {{ customParams.MITM_CA_PASSPHRASE }}
ca-p12 = {{ customParams.MITM_CA_P12 }}
