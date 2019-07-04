require 'appium_lib'
require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require_relative 'pageHelper.rb'
require_relative 'utils.rb'

if ENV['PLATFORM'] == 'android'
  caps = Appium.load_appium_txt file: File.expand_path('~/Documents/RubyProject/features/support/appiumAndroid.txt', __FILE__), verbose: true
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object   

elsif ENV['PLATFORM'] == 'ios'
  caps = Appium.load_appium_txt file: File.expand_path('~/Documents/RubyProject/features/support/appiumIos.txt', __FILE__), verbose: true
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object
end

# Coloca as variaveis como global
World(Screens)

Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
end
