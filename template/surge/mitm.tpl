skip-server-cert-verify = true
tcp-connection = true
h2 = true
hostname = {{ customParams.hostname}}
hostname-disabled = {{ customParams.disabledHostName }}
ca-passphrase = {{ customParams.MITM_CA_PASSPHRASE }}
ca-p12 = {{ customParams.MITM_CA_P12 }}
