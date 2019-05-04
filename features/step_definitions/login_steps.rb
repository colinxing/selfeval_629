Given /the following users exist/ do |table|
    table.hashes.each do |users|
        User.create! users
    end
end

Given /I am an admin/ do 
    User.create!(email: "adminemail@test.com", password: "adminpw123", role: "admin", id:"1")
    visit '/users/sign_in'
    fill_in "Email", :with => "adminemail@test.com"
    fill_in "Password", :with => "adminpw123"
    click_button 'Sign in'
end

When("I follow {string} user of {string}") do |string, string2|
  if (string=="Delete") then
      visit "/users/#{string2}", :destory
  end
end

# When("I choose {string} for {string}") do |string, string2|
#     choose(string2, option: string)
# end
# Then /^(?:|I )should be on (.+)$/ do |page_name|
#   current_path = URI.parse(current_url).path
#   if current_path.respond_to? :should
#     current_path.should == path_to(page_name)
#   else
#     assert_equal path_to(page_name), current_path
#   end
# end