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
  has_content?(content)
end