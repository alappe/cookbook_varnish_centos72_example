normal['varnish']['dir'] = '/etc/varnish'
normal['varnish']['backend_port'] = '8888' # Where nginx is serving the site uncached…
normal['varnish']['listen_address'] = '127.0.0.1' # Bind to localhost…
normal['varnish']['listen_port'] = '6081' # Where varnish should listen
#normal['varnish']['vcl_source'] = 'varnish/default.vcl.erb'
#normal['varnish']['vcl_conf'] = 'default.vcl'
#normal['varnish']['vcl_cookbook'] = 'acm-base'
override['varnish']['log_daemon'] = true
