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
