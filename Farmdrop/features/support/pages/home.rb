class Home < Base

  def goto_signup
    goto_login
    browser.a(:class =>'fd-link-alternate session__navigation-link').click

  end

  def goto_login
    browser.a(:class => 'hp-nav__signup').click
  end

end