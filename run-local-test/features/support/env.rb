require 'yaml'
require 'rspec'
require 'selenium-cucumber'
require 'appium_lib'
require 'allure-cucumber'

AllureCucumber.configure do |config|
  config.results_directory = "/reports/allure-reports"
  config.clean_results_directory = true
  config.logging_level = Logger::INFO
  # these are used for creating links to bugs or test cases where {} is replaced with keys of relevant items
  #config.link_tms_pattern = "http://www.jira.com/browse/{}"
  #config.link_issue_pattern = "http://www.jira.com/browse/{}"
end

TASK_ID = (ENV['TASK_ID'] || 0).to_i
CONFIG_NAME = ENV['CONFIG_NAME'] || 'local'

CONFIG = YAML.load(File.read(File.join(File.dirname(__FILE__), "../../config/#{CONFIG_NAME}.config.yml")))

caps = CONFIG['local_caps'][TASK_ID]

desired_caps = {
  caps: caps,
  appium_lib: {
    #server_url: "https://appium.bitbar.com:443/wd/hub"
    server_url: "http://localhost:4723/wd/hub"
  }
}

begin
  $appium_driver = Appium::Driver.new(desired_caps, true)
  $driver = $appium_driver.start_driver
rescue Exception => e
  puts e.message
  Process.exit(0)
end

$wait = Selenium::WebDriver::Wait.new(:timeout => 30)
$waitSignIn = Selenium::WebDriver::Wait.new(:timeout => 5)

