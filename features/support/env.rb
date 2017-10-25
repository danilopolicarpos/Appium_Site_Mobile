require 'rspec/expectations'
require 'appium_lib'
require 'selenium/webdriver'
require 'capybara'
require 'rspec'
require 'pry'
require 'capybara/cucumber'

if ENV['PLATFORM'] == 'ios'
  caps = Appium.load_appium_txt file: File.expand_path('./../../../ios_appium.txt', __FILE__), verbose: true
elsif ENV['PLATFORM'] == 'android'
  caps = Appium.load_appium_txt file: File.expand_path('./../../../android_appium.txt', __FILE__), verbose: true
end

Appium::Driver.new(caps)
Appium.promote_appium_methods Object
