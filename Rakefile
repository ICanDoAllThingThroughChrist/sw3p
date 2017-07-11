require "bundler/gem_tasks"
require_relative 'config/environment.rb'
require "sinatra/activerecord/rake"
#require 'pry'
require 'pry-rescue'
require 'pry-stack_explorer'
#require 'pry-doc'


task :default => :spec

task :pry do 
	Pry.start	
end

task :console do
  require 'irb'
  ARGV.clear
  IRB.start
end
