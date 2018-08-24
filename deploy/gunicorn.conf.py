bind = '0.0.0.0:9000'
workers = 2
worker_class = 'gevent'
worker_connections = 1000
timeout = 30
keepalive = 10
max_requests = 2000
max_requests_jitter = 100
