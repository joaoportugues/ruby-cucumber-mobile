After do
  $driver.reset if $driver
end

at_exit do
  $driver.quit if $driver
end
