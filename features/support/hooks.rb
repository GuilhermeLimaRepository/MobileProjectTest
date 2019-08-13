# Screens se torna variavel global
World(Screens)

Before do
  $driver.start_driver
end

After do
  $driver.driver_quit
  # Code to stop browserstack local after end of test
  $bs_local.stop if enable_local
end
