require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.full_screen
puts driver.title

sleep 2
driver.quit