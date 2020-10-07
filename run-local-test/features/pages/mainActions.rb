module MainActions
  def readText (text)
    $wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("'+ text +'")').displayed? }
  end

  def pressElement (element)
    $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').click
  end

  def typeText (text, element)
    $wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').displayed? }
    $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').send_key(text)
  end
end