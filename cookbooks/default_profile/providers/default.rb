# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#   http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
action :add do
  new_resource.file_name
  cookbook_file "/tmp/#{new_resource.file_name}"
  execute "mkdir -p '/System/Library/User Template/English.lproj/#{new_resource.path}' && cp '/tmp/#{new_resource.file_name}' '/System/Library/User Template/English.lproj/#{new_resource.path}/'"
  get_users_list.each do |user|
    if user.uid >= 500
      execute "mkdir -p '/System/Library/User Template/English.lproj/#{new_resource.path}' && cp '/tmp/#{new_resource.file_name}' '#{user.user_dir}/#{new_resource.path}/' && chown #{user.username} '#{user.user_dir}/#{new_resource.path}/#{new_resource.file_name}'" do
        returns [0,1]
      end
    end
  end
end

def get_users_list
  users = Dir.entries('/Users').select {|entry| not (entry[0] == '.' || entry == 'Shared') }
  users_list = Array.new
  for user in users do
    userObject = UserModule::MacUser.new
    userObject.uid = `id -u -r #{user}`.to_i
    userObject.username = user
    userObject.user_dir = "/Users/#{user}"
    users_list.push(userObject)
  end
  users_list
end
