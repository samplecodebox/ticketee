
Given /^there is a project "([^"]*)"$/ do |name|
  Factory(:project, :name => name)  
end
