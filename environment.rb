require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

$LOAD_PATH.unshift File.join(File.dirname(__FILE__),'..')

Dir.glob(File.join(File.dirname(__FILE__), 'app/**/*.rb')).each do |fname|
  load fname
end