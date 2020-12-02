require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.full_screen
firstname = driver.find_element(name: 'q')
firstname.send_keys 'itMS Coaching'
firstname.send_keys [:control, 'a', :enter]
driver.manage.window.full_screen
puts driver.title

sleep 15
driver.quit
