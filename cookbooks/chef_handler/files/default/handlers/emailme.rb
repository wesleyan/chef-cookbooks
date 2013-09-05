# Run handler for Chef
# Written by Max Dietz <mdietz@wesleyan.edu>

require 'rubygems'
require 'mail'

module Wesleyan
	class EmailMe < Chef::Handler
		def initialize
			options = { :address              => 'mail-int.post.wesleyan.edu',
            			:port                 => 587,
            			:domain               => node.name,
            			:user_name            => 'chef',
            			:password             => '59B@DrbA6$5C@Sdp',
            			:authentication       => 'plain',
            			:enable_starttls_auto => true  }
			
			
			
			Mail.defaults do
  				delivery_method :smtp, options
			end
		end

		def report
			Mail.deliver do
       			to 'rchristensen@wesleyan.edu, mdietz@wesleyan.edu'
     			from 'chef@wesleyan.edu'
  				subject "[CHEF FATAL] #{node.name}"
     			body "#{run_status.formatted_exception}\n#{Array(backtrace).join("\n")}"
			end
		end
	end
end