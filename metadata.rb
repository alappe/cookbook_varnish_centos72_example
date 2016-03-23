name             'my-base'
maintainer       'my'
maintainer_email 'her@example/net'
license          'Apache 2.0'
description      'Installs/Configures my base box'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

%w{ yum varnish }.each do |cbook|
  depends cbook
end

%w{ centos }.each do |os|
  supports os
end
