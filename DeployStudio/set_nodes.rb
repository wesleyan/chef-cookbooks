# Copyright (C) 2014 Wesleyan University
# 
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


require 'chef/knife'

begin
  nodes.all { |n|
    roles = ["osx-base"]
    case n.to_s
    when /mac/
      case n.to_s
      when /dac100/
        roles = ["osx-dac100"]
      when /qac/
        roles = ["osx-nsm", "osx-ss"]
      when /awks112/
        roles = ["osx-ss"]
      when /cfa/
        roles = ["osx-cfa"]
      when /fisk/
        roles = ["osx-nsm", "osx-ss"]
      when /lrc/
        roles = ["osx-nsm", "osx-ss"]
      when /haslab/
        roles = ["osx-nsm"]
      when /olin/
        roles = ["osx-nsm", "osx-ss"]
      when /paclab/
        roles = ["osx-ss"]
      when /sc72/
        roles = ["osx-nsm"]
      when /scili/
        roles = ["osx-nsm"]
      when /stlab/
        roles = ["osx-nsm"]
      when /class/
        roles = ["osx-classlab"]
      when /zilkha/
        roles = ["osx-cfa"]
      when /crcw/
        roles = ["osx-nsm", "osx-ss"]
      end
    when /roomtrol/
      roles = ["roomtrol"]
    else # windows
      roles = ["win-base"]
    end
    roles.each { |role|
      role = "role[#{role}]"
      n.run_list << role unless n.run_list.include? role
    }
    n.save
  }
rescue => e
  puts "Error encountered: #{e.inspect}"
end
