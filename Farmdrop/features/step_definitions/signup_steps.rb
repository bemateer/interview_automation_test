
Given(/^an online customer is browsing the homepage$/) do
     on(Base).goto_url
end

And(/^they navigate to the sign\-up page$/) do
     on(Home).goto_signup
end


And(/^they enter a valid email address$/) do
     on(Signup).enter_valid_email
end


And(/^they enter a valid password$/) do
  on(Signup).enter_valid_password
end



And(/^they enter a valid postcode$/) do
  on(Signup).enter_valid_postcode
end


When(/^they confirm these sign\-up details$/) do
  on(Signup).submit_details
end


Then(/^they should see confirmation that their registration has been successful$/) do
  on(Signup).confirmation_success
end


Then(/^they should see an error message for missing details$/) do
  on(Signup).missing_details_error
end