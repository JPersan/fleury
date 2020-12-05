require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'site_prism/table'
require 'fileutils'
require 'nokogiri'

require_relative 'page_helper.rb'

World(PageObjects)

# Chrome
Capybara.register_driver :selenium do |app|
    browser_options = ::Selenium::WebDriver::Chrome::Options.new
    browser_options.args << '--disable-gpu' if Gem.win_platform?
    browser_options.args << '--no-default-browser-check'
    browser_options.args << '--start-maximized'
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end

Capybara.configure do |c|
    c.default_driver = :selenium
    c.app_host = 'https://www.fleury.com.br'
    c.ignore_hidden_elements = true
    c.javascript_driver = :webkit
    c.default_max_wait_time = 10
end