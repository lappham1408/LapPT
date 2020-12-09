require 'selenium-webdriver'
require 'webdrivers'
Given('The login page is opened successfully') do  
    driver = Selenium::WebDriver.for :chrome
    driver.get 'http://the-internet.herokuapp.com/login'
End

When('user input {string} for username and {string} for password') do |string, string2|
    driver.find_element(:id, "username").send_keys(string)
    driver.find_element(:id, "password").send_keys(string2)
    driver.find_element(:xpath, "//i[contains(text(),'Login')]").click
end

Then('show meesage {string}') do |string|
    Actual_message = driver.find_element(:id, "flash").text.delete("\n")
    expect(Actual_message).to eql(string)
    
end    