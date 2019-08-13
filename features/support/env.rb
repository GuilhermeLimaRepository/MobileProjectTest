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


else

  TASK_ID = (ENV['TASK_ID'] || 0).to_i
  
  if ENV['PLATFORM'] == 'farmAndroid'
    CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), 'farmAndroid.yml')))
  else  #browserstack_ios
    CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), 'farmIos.yml')))
  end
  
  CONFIG['user'] = ENV['BROWSERSTACK_USERNAME'] || CONFIG['user']
  CONFIG['key'] = ENV['BROWSERSTACK_ACCESS_KEY'] || CONFIG['key']

  if ENV['PLATFORM'] == 'farmAndroid.yml'
    caps = CONFIG['common_caps'].merge(CONFIG['browser_caps'])
  else
   caps = CONFIG['common_caps'].merge(CONFIG['browser_caps'][TASK_ID])
  end

  $bs_local = nil

  if ENV['BROWSERSTACK_APP_ID']
    caps['app'] = ENV['BROWSERSTACK_APP_ID']
  end

  if caps['browserstack.local'] && caps['browserstack.local'].to_s == 'true'
    $bs_local = BrowserStack::Local.new
    bs_local_args = { "key" => "#{CONFIG['key']}" }
    $bs_local.start(bs_local_args)
  end
  
  desired_caps = {
    caps: caps,
    appium_lib: {
      server_url: "http://#{CONFIG['user']}:#{CONFIG['key']}@#{CONFIG['server']}/wd/hub"
    }
  }

  begin
    Appium::Driver.new(desired_caps, true)
    Appium.promote_appium_methods Object
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end

  $wait = Selenium::WebDriver::Wait.new(:timeout => 30)

end