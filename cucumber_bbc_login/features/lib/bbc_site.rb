require_relative './pages/bbc_homepage'

class BbcSite 

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_loginpage
    BbcLoginPage.new
  end

end