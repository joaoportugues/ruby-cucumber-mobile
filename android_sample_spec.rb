require 'rspec'
require 'appium_lib'
require_relative 'setup_appium'

describe "TestSuite" do
  before :all do
    @log = SetupAppium.new
    SetupAppium.new.set_screenshot_dir
    @driver = SetupAppium.new.get_android_driver
  end

  after :all do
    @log.log("Stop WebDriver")
    @driver.quit_driver
  end

  it "should show failure error"  do

    @log.log("view1: Landing page elements")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Sign in")')
    @driver.find_element(:uiautomator, 'new UiSelector().text("Sign up")')

    @log.log("view1: Clicking button Sign in")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Sign in")').click

    @log.log("view1: Sign in page elements")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Continue with Google")')
    @driver.find_element(:uiautomator, 'new UiSelector().text("Sign in with email")')
    @driver.find_element(:uiautomator, 'new UiSelector().text("No Account?")')
    @driver.find_element(:uiautomator, 'new UiSelector().text("Create one")')

    @log.log("view1: Clicking button Sign in with email")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Sign in with email")').click

    @log.log("view1: Typing in email and password")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Email")').send_keys("jtime002@gmail.com")
    @driver.hide_keyboard
    @driver.find_element(:uiautomator, 'new UiSelector().text("jtime002@gmail.com")')
    @driver.hide_keyboard
    @driver.find_element(:uiautomator, 'new UiSelector().text("Password")').send_keys("Test@112233")
    @driver.hide_keyboard

    @log.log("view1: Clicking button Sign button")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Sign In")').click

    @log.log("view1: Clicking button Answer")
    @driver.find_element(:uiautomator, 'new UiSelector().text("Email or Password is incorrect.")')
    sleep(2)
  end

end
