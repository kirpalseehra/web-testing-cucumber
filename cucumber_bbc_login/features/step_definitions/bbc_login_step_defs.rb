Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.sign_in_button
end

Given("I input incorrect username details") do
  @bbc_site.bbc_loginpage.fill_in_incorrect_username('apple1987@banana.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_loginpage.fill_in_incorrect_password('password1231423!')
end

When("I try to login") do
  @bbc_site.bbc_loginpage.click_sign_in_button
end

Then("I receieve an error for not finding the account") do
 expect(@bbc_site.bbc_loginpage.error_message).to eq @bbc_site.bbc_loginpage.error
end

Given("I input short character length password details") do
  @bbc_site.bbc_loginpage.fill_in_incorrect_password('p31423!')
end


Then("I receieve an error for not having a long enough password") do
  expect(@bbc_site.bbc_loginpage.error_message).to eq @bbc_site.bbc_loginpage.short_password
end