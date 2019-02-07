require 'capybara/dsl'

class BbcHomepage

  include Capybara::DSL 

  # page objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  SIGN_IN_BUTTON_ID ='idcta-link'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def sign_in_button
    find(:id, SIGN_IN_BUTTON_ID).click
  end

end