require 'capybara/dsl'

class BbcLoginPage

  include Capybara::DSL

  attr_accessor :error
  attr_accessor :short_password

  EMAIL_USERNAME_ID = 'user-identifier-input'.freeze
  PASSWORD_ID ='password-input'.freeze
  SIGN_IN_BUTTON_ID = 'submit-button'.freeze
  ERROR_MESSAGE_CLASS = '.form-message__text'.freeze

  def initialize 
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @short_password = 'Sorry, that password is too short. It needs to be eight characters or more.'
  end

  def fill_in_incorrect_username(username)
    fill_in(EMAIL_USERNAME_ID, :with => username)
  end

  def fill_in_incorrect_password(password)
    fill_in(PASSWORD_ID, :with => password)
  end

  def click_sign_in_button
    find(:id, SIGN_IN_BUTTON_ID).click
  end

  def error_message
    find(:css, ERROR_MESSAGE_CLASS).text
  end

end