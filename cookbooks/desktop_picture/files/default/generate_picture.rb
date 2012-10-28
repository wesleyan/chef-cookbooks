#!/usr/bin/ruby
require 'rubygems'
require 'RMagick'
include Magick
require 'date'

print "Obtaining screen resolution: "
resolution = `system_profiler | grep Resolution:`.split(/:/)[1].split(/x/)
print "#{resolution[0]} x #{resolution[1]}"
puts "Generating background #{ARGV[0]}..."

updateString = "Last updated: #{Time.new.strftime("%Y-%m-%d %H:%M:%S")}"
schoolString = "Mac OS X 10.8.2 (Wesleyan University)"

fill = GradientFill.new(0,0,0,0,'#009','#000')
image = Image.new(resolution[0].to_i, resolution[1].to_i, fill)
text = Magick::Draw.new
text.font_family = 'helvetica'
text.pointsize = 20
text.gravity = Magick::SouthWestGravity

text.annotate(image, 0,0,100,125, updateString) {
   self.fill = 'white'
}
text.annotate(image, 0,0,100,100, schoolString) {
  self.fill = 'white'
}

image.write(ARGV[0])