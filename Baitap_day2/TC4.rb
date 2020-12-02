require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.full_screen
puts driver.current_url

sleep 2
driver.quit