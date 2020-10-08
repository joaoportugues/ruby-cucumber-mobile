require 'allure-ruby-commons'

After do |scenario|
    if scenario.failed?
    ts = Time.now.to_i
    filename=ts
        $driver.save_screenshot("screenshots/#{filename}.png")
        Allure.add_attachment(name: filename, source: File.open("screenshots/#{filename}.png"), type: Allure::ContentType::PNG, test_case: true)
    end
  $driver.reset if $driver
end

at_exit do
  $driver.quit if $driver
end
