require 'capybara'
require 'capybara/cucumber'
#require 'report_builder'
require 'rspec'
require 'site_prism'
#require 'dotenv'
#require 'rubocop'
require 'faker'
require 'selenium-webdriver'
require 'pry'

#Dotenv.load

CONFIG = YAML.load_file(File.dirname(__FILE__) + '/config/credencial.yml')

# Instancia/Registra o driver do Selenium.
if ENV['BROWSER'] == 'ie'
  Capybara.register_driver :selenium do |app|
    if ENV['HEADLESS'] == 'sim'
      Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        args: ['headless'],
        timeout: 30
      )
    else
      Capybara::Selenium::Driver.new(
        app,
        browser: :internet_explorer,
        timeout: 30
      )
    end
  end

elsif ENV['BROWSER'] == 'chrome'
  Capybara.register_driver :selenium do |app|
    if ENV['HEADLESS'] == 'sim'
      options = Selenium::WebDriver::Chrome::Options.new
      options.headless!

      Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        options: options,
        timeout: 30,
        args: ["--window-size=1024,768"]
      )
    else
      Capybara::Selenium::Driver.new(app, browser: :chrome, timeout: 30)
    end
  end

elsif ENV['BROWSER'] == 'firefox'
  Capybara.register_driver :selenium do |app|
    if ENV['HEADLESS'] == 'sim'
      options = Selenium::WebDriver::Firefox::Options.new
      options.headless!

      Capybara::Selenium::Driver.new(
        app,
        browser: :firefox,
        options: options,
        timeout: 30
      )
    else
      Capybara::Selenium::Driver.new(app, browser: :firefox, timeout: 30)
    end
  end
end
