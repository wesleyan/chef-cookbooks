#
# Cookbook Name:: clea_exercises
# Recipe:: win
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

windows_package "CLEA Exercises" do
	source 'http://ims-chef.wesleyan.edu/windows/clea_exercises/CLEAExercise.msi'
	version '1.0.0'
	checksum 'e1f2934ab325958548fad4eb3962c52e9681a9ab3bd5a06c499c900e07b38c6a'
end