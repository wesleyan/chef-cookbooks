# Run handler for Chef
# Written by Max Dietz <mdietz@wesleyan.edu>

require 'rubygems'
require 'mail'

module Wesleyan
	class EmailMe < Chef::Handler
		def initialize
			options = { :address              => 'mail-int.post.wesleyan.edu',
            			:port                 => 587,
            			:domain               => 'wesleyan.edu',
            			:user_name            => 'chef',
            			:password             => '59B@DrbA6$5C@Sdp',
            			:authentication       => 'plain',
            			:enable_starttls_auto => true  }
			
			
			
			Mail.defaults do
  				delivery_method :smtp, options
			end
		end

		def report
			if run_status.failed?
				name = node.name
				exception = run_status.formatted_exception
				bt = Array(backtrace)
				Mail.deliver do
       					to 'rchristensen@wesleyan.edu, mdietz@wesleyan.edu'
     					from 'chef@wesleyan.edu'
  					subject "[CHEF FATAL] #{name}"
     					body "#{exception}\n#{bt.join("\n")}"
				end
			end
		end
	end
end
