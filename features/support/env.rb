require 'rubygems'
require 'spec'
require 'appium_lib'
require 'sauce_whisk'
require 'minitest'
require 'test/unit/assertions'

desired_caps = Appium.load_appium_txt file: File.expand_path('./', __FILE__), verbose: true

class AppiumWorld
end

# Load the desired configuration from appium.txt, create a driver then
# Add the methods to the world

  Appium::Driver.new(desired_caps)
  Appium.promote_appium_methods AppiumWorld

  World(Test::Unit::Assertions)

  World do
    AppiumWorld.new
  end

  Before {
    $driver.start_driver
  }
  #After { $driver.driver_quit }