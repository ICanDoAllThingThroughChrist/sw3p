require 'bundler/setup'
Bundler.require
require 'pry'
require 'sqlite3'
require 'rake'
require 'pry-rescue'
require 'pry-stack_explorer'
require 'pry-doc'
require 'active_record'


Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}

connection_details = YAML::load(File.open('config/database.yml'))

connection = ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/workorders.sqlite"
)

