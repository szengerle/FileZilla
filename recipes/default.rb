#
# Author:: Lance Powell (<lanceraymondpowell@gmail.com>)
# Cookbook Name:: filezilla
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Installs the client
# Add _server.rb to install the server

case node['platform']
  when 'windows'

     windows_package "FileZilla Client" do
		source node['filezilla']['url']
		installer_type :custom
		options "/S /user=all"
		action :install
	  end
	  
else
  Chef::Log.warn('FileZilla Client can only be installed on the Windows at this time.')
end
