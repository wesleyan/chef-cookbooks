action :configure do
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_server=\"#{new_resource.av_update_server}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_failsafe_username=\"#{new_resource.av_update_failsafe_username}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_failsafe_password=\"#{new_resource.av_update_failsafe_password}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_update_server_list=\"#{new_resource.av_update_server_list}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'racl_server_addr=\"#{new_resource.racl_server_addr}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'racl_server_port=#{new_resource.racl_server_port}'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'racl_interval=#{new_resource.racl_interval}'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'privileged_users=\"#{new_resource.privileged_users}\"'")
  if new_resource.samples_enabled
    system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_enabled=yes'")
  else
    system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_enabled=no'")
  end
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_send_files=\"#{new_resource.samples_send_files}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_send_stats=\"#{new_resource.samples_send_stats}\"'")
  system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'samples_send_target=\"#{new_resource.samples_send_target}\"'")
  if new_resource.av_scan_app_unwanted
    system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_scan_app_unwanted=yes'")
  else
    system("/Applications/.esets/Contents/MacOS/esets_set  --section=global 'av_scan_app_unwanted=no'")
  end
end
