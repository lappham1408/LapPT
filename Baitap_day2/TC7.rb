require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
begin
    driver.get 'https://itmscoaching.herokuapp.com/form'
    driver.manage.window.full_screen

    firstname = driver.find_element(id: 'first-name')
    firstname.send_keys 'itMS'

    lastname = driver.find_element(id: 'last-name')
    lastname.send_keys 'Huấn luyện viên'

    jobtitle = driver.find_element(id: 'job-title')
    jobtitle.send_keys 'QA'

    radio_button_1 = driver.find_element(id: 'radio-button-1')
    radio_button_1.click

    checkbox_1 = driver.find_element(id: 'checkbox-1')
    checkbox_1.click

    options = driver.find_element(:id, "select-menu")
    select_object = Selenium::WebDriver::Support::Select.new(options)
    select_object.select_by(:text, "2-4")

    datebox = driver.find_element(:id, "datepicker")
    datebox.send_keys '10/25/2020'
    
    sleep 5
ensure
    driver.quit
end