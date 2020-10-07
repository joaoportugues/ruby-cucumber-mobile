require_relative '../pages/mainActions'
include MainActions

Given("I see {string}") do |text|
  readText(text)
end

And("I press {string}") do |element|
  pressElement(element)
end

And("I type {string} in {string}") do |text, element|
  typeText(text, element)
end

Then("I should see {string}") do |match_string|
  $wait.until { $driver.find_element(:class, "android.widget.TextView").displayed? }
  text_elements = $driver.find_elements(:class, "android.widget.TextView")
  local_text_element = text_elements.select { |each_element| each_element.text.match(/The active connection is/) }
  local_text = local_text_element.first.text
  local_text.should include("The active connection is wifi.")
  local_text.should include("Up and running")
end
