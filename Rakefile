# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require 'rake'
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:drop"].clear
Rake::Task["db:reset"].clear
Rake::Task['db:seed'].clear

desc "drop the database"
task "db:drop" do
  rm_f 'db/development.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end


desc "reset the database"
task "db:reset" do
  rm_f 'db/development.sqlite3'
  touch 'db/development.sqlite3'
end

desc "seed the database"
task "db:seed" do
 require './db/seeds.rb'
end
