require 'selenium-webdriver'

#creating Chrome driver
driver = Selenium::WebDriver.for :chrome
driver.get "file:///C:/Users/DJ/Desktop/Coding%20Stuff/ruby_practice/testing/first_timer/manyEls.html"

#sleep so test is easier to watch
sleep 1

# This one isn't actually selecting the radio button for some reason. Not selecting properly?
# if driver.find_element(:name, "gender").displayed?
#     genders = driver.find_elements(:name, "gender")
#     genders.each do |el|
#         if (el.text === "Male")
#             el.click
#             puts "Male radio button was selected"
#             break
#         end
#     end
# else
#     puts "Radio button is not displayed"
# end


if driver.find_element(:name, "gender").displayed?
    puts "gender options are displaying"
    driver.find_element(:id, "male").click
    puts "Male option was clicked"
else
    puts "gender options not displaying"
end


sleep 1

if driver.find_element(:id, "carSelect").displayed?
    options = driver.find_elements(:tag_name, "option")
    options.each do |el|
        if(el.text == "Acura")
            el.click
            break
        end
    end
end

sleep 1

if driver.find_element(:id, "dogChk").displayed?
    if driver.find_element(:id, "dogChk").selected?
        driver.find_element(:id, "dogChk").clear
        puts "dog was toggled off"
    else
        driver.find_element(:id, "dogChk").click
        puts "dog was toggled on"
    end
end

sleep 1

nameInput = driver.find_element(:name, "nameInp")
if nameInput.displayed?
    puts "name input is displaying"
    nameInput.click
    nameInput.send_keys "Hans Gruber"
else
    puts "name input not displaying"
end

sleep 1

link = driver.find_element(:link, 'Google')
if link.displayed?
    link.click
end

sleep 1

# lots of unnecessary stuff while I was debugging
puts "grabbing window handles"
# window handles = tabs in this case
window_handles = driver.window_handles
puts window_handles


#  THIS IS HOW YOU SWITCH WINDOWS!!1
driver.switch_to.window(window_handles[0])

sleep 1