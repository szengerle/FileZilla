# The version is the only attribute that needs to be changed when a newer version is released.
if platform_family?('windows')
  default['filezilla']['version'] = '3.12.0.2'
  default['filezilla']['name'] = 'FileZilla Client 3.12.0.2'

  version = default['filezilla']['version']

  default['filezilla']['http_url'] = 'http://iweb.dl.sourceforge.net/project/filezilla/FileZilla_Client/'
  default['filezilla']['source'] = File.join(node['filezilla']['http_url'],"#{version}")
  default['filezilla']['location'] = File.join(node['filezilla']['source'],'/')


  if node['kernel']['machine'] == 'x86_64' # Check Windows box for 64-bit
  	default['filezilla']['exe'] = "FileZilla_#{version}_win64-setup.exe"
  else
  	default['filezilla']['exe'] = "FileZilla_#{version}_win32-setup.exe"
  end

  default['filezilla']['url'] = File.join(node['filezilla']['location'],node['filezilla']['exe'])
end
