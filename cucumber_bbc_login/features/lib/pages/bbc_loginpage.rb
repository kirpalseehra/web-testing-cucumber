require 'capybara/dsl'

class BbcLoginPage

  include Capybara::DSL

  attr_accessor :error, :short_password_error, :incorrect_password_error , :reset_password_error , :short_username_error , :long_password_error , :only_letters_error , :only_numbers_error

  USERNAME_INPUT_ID = 'user-identifier-input'.freeze
  PASSWORD_INPUT_ID ='password-input'.freeze
  SIGN_IN_BUTTON_ID = 'submit-button'.freeze
  USERNAME_ERROR_MESSAGE_ID = 'form-message-username'.freeze
  PASSWORD_ERROR_MESSAGE_ID = 'form-message-password'.freeze

  def initialize 
    @error = "Sorry, we can’t find an account with that email. You can register for a new account or get help here."
    @short_password_error = "Sorry, that password is too short. It needs to be eight characters or more."
    @incorrect_password_error = "That's not the right password for that account. Reset your password here."
    @reset_password_error = "Uh oh, that password doesn’t match that account. Please try again."
    @short_username_error = "Sorry, that username's too short. It needs to be at least two characters."
    @long_password_error = "Sorry, that password is too long. It can't be more than 50 characters."
    @only_letters_error = "Sorry, that password isn't valid. Please include something that isn't a letter."
    @only_numbers_error = "Sorry, that password isn't valid. Please include a letter."
  end

  def fill_in_username(username)
    fill_in(USERNAME_INPUT_ID, :with => username)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_INPUT_ID, :with => password)
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