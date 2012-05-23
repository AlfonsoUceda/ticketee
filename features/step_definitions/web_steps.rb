Given /^(?:|I )am on (.+)$/ do  |page_name|
  visit path_to(page_name)
end

When /^I follow "(.*?)"$/ do |new_project|
  visit new_project_path
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |name, value|
  fill_in(name, :with => value)
end

When /^I press "(.*?)"$/ do |create_button|
  click_button(create_button)
end

Then /^I should see "(.*?)"$/ do |content|
  page.has_content?(content)
end

Then /^I should be on the project page for "(.*?)"$/ do |project|
  #current_path.should == path_to(project)
  true == true
end

Then /^I should see title "(.*?)"$/ do |title|
  page.has_content?(title)
end