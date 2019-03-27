require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
#navigate to url or exact filepath
driver.navigate().to("https://flux.motionmd-dev.com/login")

#give site time to load
sleep 3

for i in 1..7 do

    emailInput = driver.find_element(:id, "user_session_email")
    passInput = driver.find_element(:id, "user_session_password")
    loginBtn = driver.find_element(:class_name, "btn")
    

    if emailInput.displayed?
        emailInput.click
        emailInput.send_keys(:control, "a")
        emailInput.send_keys "daniel.john613@gmail.com"
    else
        puts "Email input is not displaying"
    end

    sleep 1

    if passInput.displayed?
        passInput.click
        passInput.send_keys "password"
    else
        puts "Password input is not displaying"
    end

    sleep 1

    if loginBtn.displayed?
        loginBtn.click
    else
        puts "Button is not displaying"
    end

    sleep 3

end

if driver.find_element(:id, "flash_alert_alert").displayed?
    puts "Lockout message is displaying!"
else
    puts "Lockout message is not displaying. Is email valid?"
end
