require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
#navigate to url or exact filepath
driver.get "https://www.flux.motionmd-dev.com"

#give site time to load
sleep 3

emailInput = driver.find_element(:id, "user_session_email")
passInput = driver.find_element(:id, "user_session_password")
loginBtn = driver.find_element(:class_name, "btn")

for i in 1..7 do

    if emailInput.displayed?
        emailInput.click
        emailInput.send_keys "not an email"
    else
        puts "Email input is not displaying"
    end

    if passInput.displayed?
        passInput.click
        passInput.send_keys "password"
    else
        puts "Password input is not displaying"
    end

    if loginBtn.displayed?
        loginBtn.click
    else
        puts "Button is not displaying"
    end

    sleep 2
end
