# encoding: utf-8

require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require 'yaml'
require 'capybara/poltergeist'
require 'fileutils'
require 'i18n'
require_relative 'helper.rb'
require 'imatcher'
require 'chunky_png'
require 'os'

BROWSER = ENV['BROWSER']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

## register driver according with browser chosen
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    'chromeOptions' => {
      "args" => [ "--window-size=1366,768"]
    }
    )
    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps, switches: ['--incognito'])
  elsif BROWSER.eql?('firefox')

    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('browser.privatebrowsing.autostart')
    caps = Selenium::WebDriver::Remote::Capabilities.firefox(accept_insecure_certs: true)

    Capybara::Selenium::Driver.new(app, browser: :firefox, options: options, marionette: true, desired_capabilities: caps)
  elsif BROWSER.eql?('internet_explorer')
    Capybara::Selenium::Driver.new(app, browser: :internet_explorer)
  elsif BROWSER.eql?('safari')
    Capybara::Selenium::Driver.new(app, browser: :safari)
  elsif BROWSER.eql?('poltergeist')
    options = { js_errors: false }
    Capybara::Poltergeist::Driver.new(app, options)
  end
end

IMATCHER = Imatcher::Matcher.new mode: :grayscale, tolerance: 1
