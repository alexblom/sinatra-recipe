require 'sinatra'
require "sinatra/namespace"
require 'yaml'
require 'rack-flash'
require 'base64'
require 'openssl'

RACK_ENV ||= ENV["RACK_ENV"] || "production"

#Initializers
require_relative 'initializers/action_mailer.rb'
require_relative 'initializers/active_record.rb'

use Rack::Session::Cookie#, 
#  :key => "",
#  :path => '/',
#  :expire_after => 2592000, 
#  :secret => ""

#We use rack-flash for flash notices
use Rack::Flash, :sweep => true

["lib", 
 "app"].each {|c| Dir["./#{c}//**/*.rb"].each {|f| require f}}

set :views, Proc.new { File.join(root, "app/views") }
set :dump_errors, true
set :logging, true
set :show_exceptions, false
