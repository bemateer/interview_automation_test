require 'rspec/expectations'

class Signup < Base


  def enter_valid_email
    valid_email = data_for(:email_address)['valid']
    puts "email address: " + valid_email
    browser.text_field(:id => 'email').set valid_email
  end

  def enter_valid_password
    valid_password = data_for(:password)['valid']
    puts "password: " + valid_password
    browser.text_field(:id => 'password').set valid_password
  end

  def enter_valid_postcode
    valid_postcode = data_for(:postcode)['valid']
    puts "postcode: " + valid_postcode
    browser.text_field(:id => 'zipcode').set valid_postcode
  end

  def submit_details
    browser.button(:id => 'email-signup-form-submit').click
  end

  def confirmation_success
    sleep(2)
    expect(browser.p(:text => 'Account').exists?).to be(true)
  end

  def missing_details_error
     sleep(2)
    expect(browser.div(:class => 'fd-alert fd-alert-danger session__errors').exists?).to be(true)
  end

end