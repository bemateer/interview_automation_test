require 'rspec/expectations'

class Base
  include PageObject
  include DataMagic
  include RSpec::Matchers


  def create(page)
    page.new(@browser)
  end

  def goto_url
    browser.goto "next.farmdrop.com"
    browser.window.maximize
  end

end