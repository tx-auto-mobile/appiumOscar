=begin
Step definition file contains the code of how the steps written in feature file will interact
with the iOS/Android application.
=end

And(/^I should see "([^"]*)" message$/) do |message|
   actual_text = find_element(:id, message).text
   assert_equal(message, actual_text, "Text or element is missing")
end

And(/^I should not see the "([^"]*)" popup anymore$/) do |arg|
  element_exists = find_elements(:id, arg).count > 0
  puts element_exists.to_s
  if(element_exists==false)
    assert true
  else
    assert(false, "The element is present in the screen")
  end
end

Then(/^I tap on "([^"]*)" element$/) do |elem|
   find_element(:id, elem).click
 end

Given(/^I am in main view$/) do
  element_1 = find_element(:id, "Inbox")
  element_2 = find_element(:id, "Archive")

  if(element_1 && element_2 != nil)
    assert(true)
  else
    assert(false, "One of the elements of main view is missing")
  end
end

When(/^I tap on "([^"]*)" button$/) do |element|
   find_element(:id, element).click
end

And(/^I see the "([^"]*)" element$/) do |elem|
   element = find_element(:id, elem)
   if(element != nil)
     assert(true)
   else
     assert(false, "The element " + elem + "is not present")
   end
end

Then(/^the number "([^"]*)" should be displayed$/) do |elem|
   element = find_element(:id, elem)
   value = element.value
   if(value.to_s == elem)
     assert(true)
   else
     puts "Value: " + value + " Expected: " + elem
     assert(false, "The element " + elem + "is not present")
   end
end

And(/^I tap on "([^"]*)" switch$/) do |arg|
  find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIASwitch[1]").click
end

And(/^"([^"]*)" switch should have value "([^"]*)"$/) do |arg1, expected_value|
  actual_value = find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]/UIASwitch[1]").value
  puts actual_value.to_s
  assert_equal(expected_value, actual_value.to_s, "The value expected is not present")
end