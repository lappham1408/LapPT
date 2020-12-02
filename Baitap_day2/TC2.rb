require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'
driver.manage.window.full_screen

sleep 2
driver.quit