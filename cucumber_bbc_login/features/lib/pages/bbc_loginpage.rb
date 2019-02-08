require 'capybara/dsl'

class BbcLoginPage

  

  attr_accessor :error, :short_password, :incorrect_password , :reset_password , :short_username
  include Capybara::DSL
  EMAIL_USERNAME_ID = 'user-identifier-input'.freeze
  PASSWORD_ID ='password-input'.freeze
  SIGN_IN_BUTTON_ID = 'submit-button'.freeze
  USERNAME_ERROR_MESSAGE_ID = 'form-message-username'.freeze
  PASSWORD_ERROR_MESSAGE_ID = 'form-message-password'.freeze

  def initialize 
    @error = "Sorry, we can’t find an account with that email. You can register for a new account or get help here."
    @short_password = "Sorry, that password is too short. It needs to be eight characters or more."
    @incorrect_password = "That's not the right password for that account. Reset your password here."
    @reset_password = "Uh oh, that password doesn’t match that account. Please try again."
    @short_username = "Sorry, that username's too short. It needs to be at least two characters."
  end

  def fill_in_username(username)
    fill_in(EMAIL_USERNAME_ID, :with => username)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_ID, :with => password)
  end

  def click_sign_in_button
    find(:id, SIGN_IN_BUTTON_ID).click
  end

  def username_error_message 
    find(:id, USERNAME_ERROR_MESSAGE_ID).text
  end

  def password_error_message
    find(:id ,PASSWORD_ERROR_MESSAGE_ID).text
  end

end