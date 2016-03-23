# add the mariadb repo
yum_repository 'MariaDB' do
  description 'MariaDB'
  url 'http://yum.mariadb.org/10.1/centos7-amd64'
  gpgkey 'https://yum.mariadb.org/RPM-GPG-KEY-MariaDB'
  action :create
  timeout '600'
end

# add the EPEL repo
yum_repository 'epel' do
  description 'Extra Packages for Enterprise Linux'
  mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
  gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
  action :create
  fastestmirror_enabled true
  timeout '600'
end

# add the remi repo
yum_repository 'remi' do
  description "Les RPM de remi pour Enterprise Linux #{node['platform_version']} - $basearch"
  mirrorlist 'http://rpms.famillecollet.com/enterprise/7/remi/mirror'
  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  action :create
  fastestmirror_enabled true
  timeout '600'
end

# add the remi-php55 repo
yum_repository 'remi-php70' do
  description "Les RPM de remi pour Enterprise Linux #{node['platform_version']} - $basearch"
  mirrorlist 'http://rpms.famillecollet.com/enterprise/7/php70/mirror'
  gpgkey 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
  action :create
  fastestmirror_enabled true
  timeout '600'
end

# # add the nginx repo
# yum_repository 'nginx' do
#   description "nginx repo"
#   url 'http://nginx.org/packages/mainline/centos/7/$basearch/'
#   gpgcheck false
#   action :create
# end
