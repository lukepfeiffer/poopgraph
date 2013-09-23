Given "I am on the home page" do
  visit root_path
end

When /^I fill in "(.+)" with "(.+)"$/ do |field, value|
  fill_in field, with: value
end

Then /^I see "(.+)"$/ do |text|
  page.should have_text(text)
end

When /^I press "(.+)"$/ do |button|
  click_button button
end

When /^I click "(.+)"$/ do |link_name|
  click_link link_name
end

Then "I should be on my user show page" do
  page.current_url.should == user_path(@user)
end
