default['redis']['user'] = 'redis'
default['redis']['owner'] = 'redis'
default['redis']['home_dir'] = '/tmp'

default['redis']['source'] = "http://download.redis.io/releases/redis-2.8.9.tar.gz"
default['redis']['version'] = '2.8.9'
default['redis']['pkgs'] = %w{ build-essential tcl8.5 }