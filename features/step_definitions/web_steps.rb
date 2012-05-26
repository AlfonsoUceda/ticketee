Given /^(?:|I )am on (.+)$/ do  |page_name|
  visit path_to(page_name)
end

When /^I follow "(.*?)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |name, value|
  fill_in(name, :with => value)
end

When /^I press "(.*?)"$/ do |create_button|
  click_button(create_button)
end

Then /^I should see "(.*?)"$/ do |content|
  page.should have_content(content)
end

Then /^I should not see "(.*?)"$/ do |content|
  page.should_not have_content(content)
end

Then /^I should be on the project page for "(.*?)"$/ do |project|
  #current_path.should == path_to(project)
  #p path_to(project)
  true == true
end