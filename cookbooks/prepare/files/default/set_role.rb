#!/usr/bin/ruby

require 'socket'

roles = ["osx-base"]
printer = ""
case Socket.gethostname
when /dac100/
	roles = ["osx-dac100"]
	printer = "DAC100-E3880-1"
when /qac/
	roles = ["osx-nsm", "osx-ss"]
	printer = "QAC-HP4015-BW"
when /awks112/
	roles = ["osx-ss"]
	printer = "AWKS112-color-HP5550"
when /cfa/
	roles = ["osx-cfa"]
	printer = "cfalab-xerox7760gx-color"
when /fisk/
	roles = ["osx-nsm", "osx-ss"]
	printer = "Fisk-HP4015BW"
when /lrc/
	roles = ["osx-nsm", "osx-ss"]
	printer = "LRC-HP4015BW2"
when /haslab/
	roles = ["osx-nsm"]
	printer = "HAS-HP4015BW"
when /olin/
	roles = ["osx-nsm", "osx-ss"]
	printer = "Printers"
when /paclab/
	roles = ["osx-ss"]
	printer = "PAC-HP4015BW"
when /sc72/
	roles = ["osx-nsm"]
	printer = "Printers"
when /scili/
	roles = ["osx-nsm"]
	printer = "Printers"
when /stlab/
	roles = ["osx-nsm"]
	printer = "ST-HP4015BW"
when /class/
	roles = ["osx-classlab"]
	printer = "Printers"
end

roleList = roles.map { |r| "\"role[#{r}]\"" }.join(', ')

File.open("/scripts/roles.json", "w") { |f|
f << %Q{{
    "default_attributes": {
        "printers": {
            "default": "#{printer}"
        }
    },
    "run_list": [ #{roleList} ]
}}}


