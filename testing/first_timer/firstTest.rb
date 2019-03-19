require 'selenium-webdriver'

#creating Chrome driver
driver = Selenium::WebDriver.for :chrome
driver.get "file:///C:/Users/djohn8/Desktop/ruby_practice/testing/first_timer/manyEls.html"

#sleep so test is easier to watch
sleep 3


if driver.find_element(:name, "gender").displayed?
    driver.find_element(:value, "male").click
    puts "Male radio button is selected"
else
    puts "Radio button is not displayed"
end

if driver.find_element(:id, "carSelect").displayed?
    options = driver.find_elements(:tag_name, "option")
    options.each do |el|
        if(el.text == "Acura")
            el.click
            break
        end
    end
end

if driver.find_element(:id, "dogChk").displayed?
    if drive.find_element(:id, "dogChk").isClicked?
        drive.find_element(:id, "dogChk").click
        puts "dog was toggled off"
    else
        drive.find_element(:id, "dogChk").click
        puts "dog was toggled on"
    end
end
