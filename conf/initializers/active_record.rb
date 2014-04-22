require 'active_record'

#Initialize Database
dbconfig = YAML::load(File.open("conf/database.yml"))
ActiveRecord::Base.establish_connection dbconfig[RACK_ENV]
