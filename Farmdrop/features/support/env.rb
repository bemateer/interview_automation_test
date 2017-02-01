require 'rspec'
require 'page-object'
require 'page_navigation'
require 'require_all'
require 'data_magic'
require 'fig_newton'
require 'faker'
require 'watir'
require 'mechanize'


require_rel 'pages'
require_rel 'services'

class CustomWorld
  include PageObject::PageFactory
end

World do
  CustomWorld.new
end

browser = Watir::Browser.new :chrome

INDEX_OFFSET = -1
WEBDRIVER = true

 
Before do
  @browser = browser
end

at_exit do
  browser.close
end
