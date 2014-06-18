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
#
# Production Environment
name 'production'
description 'This is our production environment, it is for recipes and ' \
            'cookbooks that have been thoroughly tested for bugs and ' \
            'regressions'
cookbook_versions 'adobe_air' => '<= 0.2.1',
                  'apple_compressor' => '<= 0.4.0',
                  'apple_final_cut_pro' => '<= 0.5.0',
                  'adobe_acrobat_pro' => '<= 0.5.1',
                  'adobe_flash_player' => '<= 0.6.3',
                  'apple_ilife' => '<= 0.2.8',
                  'apple_itunes' => '<= 0.4.4',
                  'apple_iwork' => '<= 0.1.1',
                  'apple_logic_pro' => '<= 0.2.1',
                  'apple_osx_updates' => '<= 0.4.2',
                  'apple_remote_desktop_client' => '<= 0.2.0',
                  'apple_remote_desktop_admin' => '<= 0.2.1',
                  'apple_safari' => '<= 0.4.0',
                  'apple_xcode' => '<= 0.4.0',
                  'chef_chefclient' => '<= 0.4.0',
                  'dmg' => '<= 1.1.0',
                  'eset_nod32' => '<= 0.2.0',
                  'google_chrome' => '<= 0.6.2',
                  'hamrick_vuescan' => '<= 0.4.1',
                  'homebrew' => '<= 1.5.4',
                  'kintekcorp_kintek_exploer' => '<= 0.1.0',
                  'mathworks_matlab' => '<= 0.2.0',
                  'microsoft_office' => '<= 0.6.1',
                  'microsoft_silverlight' => '<= 0.1.1',
                  'microsoft_skype' => '<= 0.3.1',
                  'mozilla_firefox' => '<= 0.4.11',
                  'prepare' => '<= 0.1.0',
                  'printers' => '<= 0.6.2',
                  'rodsbooks_refind' => '<= 0.1.1',
                  'schrodinger_pymol' => '<= 0.2.0',
                  'thomson_reuters_endnote' => '<= 0.2.0',
                  'videolan_vlc' => '<= 0.6.3',
                  'wacom_tablet' => '<= 0.1.0',
                  'xorg_xquartz' => '<= 0.2.0'
