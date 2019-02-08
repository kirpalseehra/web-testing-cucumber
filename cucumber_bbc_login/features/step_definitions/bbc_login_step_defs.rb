Given("I access the bbc login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.sign_in_button
end

# Inputting incorrect username and password details
Given("I input incorrect username details") do
  @bbc_site.bbc_loginpage.fill_in_username('apple117@banana.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_loginpage.fill_in_password('password1231423!')
end

When("I try to login") do
  @bbc_site.bbc_loginpage.click_sign_in_button
end

Then("I receieve an error for not finding the account") do
 expect(@bbc_site.bbc_loginpage.username_error_message).to eq @bbc_site.bbc_loginpage.error
end

# Inputting password details that are too short in length
Given("I input short character length password details") do
  @bbc_site.bbc_loginpage.fill_in_password('p31423!')
end


Then("I receieve an error for not having a long enough password") do
  expect(@bbc_site.bbc_loginpage.password_error_message).to eq @bbc_site.bbc_loginpage.short_password
end

# Inputting correct username credentials but incorrect corresponding password details for that account
Given("I input correct username details") do
  @bbc_site.bbc_loginpage.fill_in_username('kirpal-seehra@hotmail.co.uk')
end

Given("I input the incorrect password details") do
  @bbc_site.bbc_loginpage.fill_in_password('p31423xxasxa!')
end

Then("I receieve an error for not having the right password for that account") do
  expect(@bbc_site.bbc_loginpage.password_error_message).to eq(@bbc_site.bbc_loginpage.incorrect_password) | eq(@bbc_site.bbc_loginpage.reset_password)
  sleep 10
end

# Inputting a username that is too short in character length
Given("I input a username thats too short") do
  @bbc_site.bbc_loginpage.fill_in_username('k')
end

Then("I receieve an error for having a username too short") do
  expect(@bbc_site.bbc_loginpage.username_error_message).to eq @bbc_site.bbc_loginpage.short_username
end

# Inputting a password that is too long in character length
Given("I input a password with too many characters") do
  @bbc_site.bbc_loginpage.fill_in_password('sadsadsadsadsadaadsdsadsadsadasasadsadasdadadasdadaasasdasdasasdaadsadasadasdjasdijsaiodjsaoidjaisodjoiasjdoiasjodjsasasaaiojdoiasjdoij321')
end

Then("I receieve an error for having a password too long") do
  expect(@bbc_site.bbc_loginpage.password_error_message).to eq @bbc_site.bbc_loginpage.long_password
end

# Inputting a password using only letters
Given("I input a password using only letters") do
  @bbc_site.bbc_loginpage.fill_in_password('kirpalsinghseehra')
end

Then("I recieve an error asking me to include something other than just letters") do
  expect(@bbc_site.bbc_loginpage.password_error_message).to eq @bbc_site.bbc_loginpage.only_letters
end

# Inputting a password using only numbers
Given("I input a password using only numbers") do
  @bbc_site.bbc_loginpage.fill_in_password('0873232131231')
end

Then("I recieve an error asking me to include something other than just numbers") do
  expect(@bbc_site.bbc_loginpage.password_error_message).to eq @bbc_site.bbc_loginpage.only_numbers
end