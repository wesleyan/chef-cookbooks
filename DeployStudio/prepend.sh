#!/bin/bash
 
JSCSS=$'/* Copyright (C) 2014 Wesleyan University
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* 
*   http://www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/\n\n'
 
PY=$'# Copyright (C) 2014 Wesleyan University
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
# limitations under the License.\n\n'
 
#add file extensions to find command as needed
 
 
for file in $(find . -type f -name '*.rb')
do
  echo "$PY" | cat - $file > tmp && mv tmp $file
done
 
#javascript files
for file in $(find . -type f -name '*.js')
do
  echo "$JSCSS" | cat - $file > tmp && mv tmp $file
done
 
#css files
for file in $(find . -type f -name '*.css')
do
  echo "$JSCSS" | cat - $file > tmp && mv tmp $file
done
