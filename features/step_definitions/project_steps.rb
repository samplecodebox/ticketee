
Given /^there is a project "([^"]*)"$/ do |name|
  @project = Factory(:project, :name => name)
end
