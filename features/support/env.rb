require 'appium_lib'
require 'rspec'
require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'
require 'pry'
require 'browserstack/local'
require "faker"
require_relative 'pageHelper.rb'
require_relative 'utils.rb'

if ENV['PLATFORM'] == 'android'
  caps = Appium.load_appium_txt file: File.expand_path('~/Desktop/MobileProjectTest/features/support/appiumAndroid.txt', __FILE__), verbose: true
  Appium::Driver.new(caps, true)
  Appium.promote_appium_methods Object   
end