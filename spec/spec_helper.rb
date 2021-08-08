# Capybara.default_driver = :selenium # :selenium_chrome and :selenium_chrome_headless are also registered
# SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
#   SimpleCov::Formatter::Console,
#   # Want a nice code coverage website? Uncomment this next line!
#    SimpleCov::Formatter::HTMLFormatter
# ])
# SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'simplecov'
require 'simplecov-console'
require 'capybara'
require 'capybara/rspec'
# require 'rubygems'
# require 'bundler/setup'
# require 'capybara/dsl'
# require 'selenium-webdriver'
require 'rspec'
# require 'features/web_helpers.rb'
# Capybara.register_driver :selenium_chrome do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end

# Capybara.javascript_driver = :selenium_chrome
Capybara.default_driver = :selenium
Capybara.server = :webrick

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
   SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

# For accurate test coverage measurements, require your code AFTER 'SimpleCov.start'

Capybara.app = RockPaperScissors

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
