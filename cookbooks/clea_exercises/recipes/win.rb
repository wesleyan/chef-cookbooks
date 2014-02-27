#
# Cookbook Name:: clea_exercises
# Recipe:: win
#
# Copyright 2013, Wesleyan University
#
# All rights reserved - Do Not Redistribute
#

windows_package "CLEA Exercises" do
	source 'http://ims-chef.wesleyan.edu/windows/clea_exercises/CLEAExercise.msi'
	version '1.0.0'
	checksum 'e1f2934ab325958548fad4eb3962c52e9681a9ab3bd5a06c499c900e07b38c6a'
end