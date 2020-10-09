require_relative 'exploreRewardsPage'

module MainActions

#Read text method
def readText (text)
  case text.downcase
  when "profile menu"
   $wait.until { $driver.find_element(:xpath, PROFILE_MENU).displayed? }
  #default action to read or find elements in the page using text defined in the test case
  else
   $wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("'+ text +'")').displayed? }
  end
end

#Press element method
def pressElement (element)
  case element.downcase
  when "profile menu"
    $driver.find_element(:xpath, PROFILE_MENU).click
  when "log out"
    (0...5).each do            # continue to scroll the until element if found / probably will be added to the default method
      ele = $driver.find_elements(:uiautomator, 'new UiSelector().text("'+ element +'")') # check if the element is displayed or not
      $ta.swipe({start_x: 100, start_y: 600, end_x:100, end_y: 100, duration: 500}).perform # scroll down
      unless ele.empty?  # click the element if the element is displayed
        $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').click
      end
    end
  #default action to press and elements in the page using text defined in the test case
  else
    $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').click
  end
end

#Type text method
#Cases are used in order to handle specific requests, such as random strings or specific elements that need to be accessed differently
def typeText (text, element)
    #find element present in page
    $wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').displayed? }
    #cases for different inputs
    case text.downcase
    when 'random'
      text=(0...8).map { (65 + rand(26)).chr }.join
      $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').send_key(text)
    when 'random email'
      randomNumber=rand(1...10000)
      text='jtime002+'+ randomNumber.to_s + '@gmail.com'
      $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').send_key(text)
    #default action to input text as passed on the test case
    else
      $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').send_key(text)
    end
  end
end