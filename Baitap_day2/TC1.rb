require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get 'https://www.google.com/'

sleep 2
driver.quit