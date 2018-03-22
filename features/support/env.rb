require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'pry'
require 'capybara\cucumber'
require 'site_prism'
require 'rubygems'

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 15
Capybara.page.driver.browser.manage.window.maximize
