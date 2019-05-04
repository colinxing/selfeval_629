When("I follow {string} of {string}") do |string, string2|
   if (string=="Show") then
      visit "/questions/#{string2}"
  elsif (string == "Edit") then   
    visit "/questions/#{string2}/edit"
  elsif (string == "Destroy")
    visit "/questions/#{string2}"
  elsif (string == "Approve") then
    visit "questions/approve/#{string2}"
  end
end

Then("I should be redirected to Edit Question Page of {string}") do |string|
  visit "/questions/#{string}/edit"
end

Then("I should be redirected to the Show page of {string}") do |string|
  visit "/questions/#{string}"
end

Then("I should be redirected to the questions page") do
  visit "/questions"
end

Then("{string} should not be in the Question List") do |string|
  Question.find_by_content(string).should_not eq string
end