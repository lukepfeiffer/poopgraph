When(/^I click the "(.*?)" poop type$/) do |poop_type|
  page.find(".#{poop_type}").click
end
