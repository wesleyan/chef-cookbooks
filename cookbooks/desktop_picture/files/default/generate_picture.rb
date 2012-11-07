#!/usr/bin/ruby
require 'rubygems'
require 'RMagick'
include Magick
require 'date'

# print "Obtaining screen resolution: "
# resolution = `/tmp/screenresolution get 2>&1 | grep "Display 0"`..split(/ /)[4].split(/x/)
# print "#{resolution[0]} x #{resolution[1]}"
puts "Generating background #{ARGV[0]} for resolution 3200 x 2000..."

updateString = "Last updated: #{Time.new.strftime("%Y-%m-%d %H:%M:%S")}"
schoolString = "Mac OS X 10.8.2 (Wesleyan University)"

fill = GradientFill.new(0,0,0,0,'#009','#000')
image = Image.new(3200, 2000, fill)
text = Magick::Draw.new
text.font_family = 'helvetica'
text.pointsize = 45
text.gravity = Magick::SouthWestGravity

text.annotate(image, 0,0,200,250, updateString) {
   self.fill = 'white'
}
text.annotate(image, 0,0,200,200, schoolString) {
  self.fill = 'white'
}

image.write(ARGV[0])