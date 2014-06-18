# Run handler for Chef
# Written by Max Dietz <mdietz@wesleyan.edu>

require 'rubygems'
require 'mail'

# Chef handler to e-mail upon failure.
module Wesleyan
	class EmailMe < Chef::Handler
		def initialize
			options = { :address              => 'mail-int.post.wesleyan.edu',
            			:port                 => 587,
            			:domain               => 'wesleyan.edu',
            			:user_name            => 'chef',
            			:password             => '',
            			:authentication       => 'plain',
            			:enable_starttls_auto => true  }
			
			
			
			Mail.defaults do
  				delivery_method :smtp, options
			end
		end

		#def get_users
  		#	users = Dir.entries('/Users').select {|entry| not (entry == '.' || entry == '..' || entry == 'Shared') }
  		#	users_list = Array.new
  		#	for user in users do
    	#		userObject = {}
    	#		userObject['uid'] = `id -u -r #{user}`.to_i
    	#		userObject['username'] = user
    	#		userObject['user_dir'] = "/Users/#{user}"
    	#		users_list.push(userObject)
  		#	end
  		#	users_list
		#end


		def report
			if run_status.failed?
				name = node.name
				exception = run_status.formatted_exception
				bt = Array(backtrace)
				Mail.deliver do
       					to 'rchristensen@wesleyan.edu'
     					from 'chef@wesleyan.edu'
  					subject "[CHEF FATAL] #{name}"
     					body "#{exception}\n#{bt.join("\n")}"
				end
			#else
			#	name = node.name
			#	updated_resources = run_status.updated_resources
			#	start_time = run_status.start_time
			#	::File.open("/System/Library/User\ Template/English.lproj/Desktop/Revision.txt","w") do |f|
			#		f.puts node.name
			#		f.puts start_time
			#		f.puts "Updated Resources:"
			#		f.puts updated_resources.join("\n")
			#	end
			#	get_users.each do |user|
    		#		if user['uid'] >= 500
    		#			::File.open("#{user['user_dir']}/Desktop/Revision.txt","w") do |f|
    		#				f.puts node.name
			#				f.puts start_time
			#			end
			#			system("chmod 444 #{user['user_dir']}/Desktop/Revision.txt")
        	#		end
        	#	end
        	end
      	end
    end
end
