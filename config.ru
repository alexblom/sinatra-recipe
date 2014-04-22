#This file is used for Bundler
#./app proceeds with the normal sinatra process
require 'rubygems'
require 'bundler'

Bundler.require

require './conf/application.rb'

run App
