Given("I see {string}") do |text|
  $wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("'+ text +'")').displayed? }
  #$wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("Sign up")').displayed? }
  #$driver.find_element(:id, "com.example.android.basicnetworking:id/test_action").click
end

And("I press {string}") do |element|
  $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').click
end

And("I type {string} in {string}") do |text, element|
  $wait.until { $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').displayed? }
  $driver.find_element(:uiautomator, 'new UiSelector().text("'+ element +'")').send_key(text)
end

Then("I should see {string}") do |match_string|
  $wait.until { $driver.find_element(:class, "android.widget.TextView").displayed? }
  text_elements = $driver.find_elements(:class, "android.widget.TextView")
  local_text_element = text_elements.select { |each_element| each_element.text.match(/The active connection is/) }
  local_text = local_text_element.first.text
  local_text.should include("The active connection is wifi.")
  local_text.should include("Up and running")
end
