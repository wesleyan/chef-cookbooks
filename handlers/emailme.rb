require 'rubygems'
require 'mail'

module Wesleyan
	class EmailMe < Chef::Handler
		def initialize
			options = { :address              => "smtp.gmail.com",
            			:port                 => 587,
            			:domain               => node.name,
            			:user_name            => 'mdietz@wesleyan.edu',
            			:password             => 'Moribito94',
            			:authentication       => 'plain',
            			:enable_starttls_auto => true  }
			
			
			
			Mail.defaults do
  				delivery_method :smtp, options
			end
		end

		def report
			Mail.deliver do
       			to 'mdietz@wesleyan.edu'
     			from 'supermaxnyc@gmail.com'
  				subject "[CHEF FATAL] #{node.name}"
     			body "#{run_status.formatted_exception}\n#{Array(backtrace).join("\n")}"
			end
		end
	end
end