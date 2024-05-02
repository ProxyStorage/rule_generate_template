mode: rule
log-level: info
allow-lan: true
ipv6: false
port: 7890
socks-port: 7891
redir-port: 7892
mixed-port: 7893

external-controller: 0.0.0.0:9090
{% if customParams.secret %}
secret: {{ customParams.secret }}
{% endif %}
{% if customParams.secret %}
authentication: {{ customParams.authentication | json }}
{% endif %}
clash-for-android:
  append-system-dns: false
profile:
  tracing: true
experimental:
  sniff-tls-sni: true
