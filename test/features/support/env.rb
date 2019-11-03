require 'capybara'
require 'cucumber'
require 'site_prism'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require_relative 'page_helper.rb'
require_relative 'helper.rb'
require 'pry'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

AMBIENTE = ENV['AMBIENTE']

CONFIG =YAML.load_file(File.dirname(__FILE__)+"/ambientes/#{AMBIENTE}.yml")

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 80
end