
Given /^there are following users:$/ do |table|

  table.hashes.each do |attributes|
    @user = User.create!(attributes)
  end
end