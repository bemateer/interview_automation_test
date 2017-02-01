Feature: Sign-up
  As an online customer
  I want to be able to sign up to Farmdrop
  So that I can buy products

  Scenario: 01: Sign-up: Sucess
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter a valid email address
    And they enter a valid password
    And they enter a valid postcode
    When they confirm these sign-up details
    Then they should see confirmation that their registration has been successful

  Scenario: 02: Sign-up: Missing Email
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter a valid password
    And they enter a valid postcode
    When they confirm these sign-up details
    Then they should see an error message for missing details

  Scenario: 03: Sign-up: Missing Password
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter a valid email address
    And they enter a valid postcode
    When they confirm these sign-up details
    Then they should see an error message for missing details

  Scenario: 04: Sign-up: Missing Postcode
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter a valid email address
    And they enter a valid password
    When they confirm these sign-up details
    Then they should see an error message for missing details

  Scenario: 05: Sign-up: Invalid Email
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter an invalid email address
    And they enter a valid password
    And they enter a valid postcode
    When they confirm these sign-up details
    Then they should see an error message for invalid details

  Scenario: 06: Sign-up: Invalid Password
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter a valid email address
    And they enter an invalid password
    And they enter a valid postcode
    When they confirm these sign-up details
    Then they should see an error message for invalid details

  Scenario: 07: Sign-up: Invalid Postcode
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter a valid email address
    And they enter a valid password
    And they enter an invalid postcode
    When they confirm these sign-up details
    Then they should see an error message for invalid details

  Scenario: 08: Sign-up: Existing Email Used
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    And they enter an existing email address
    And they enter a valid password
    And they enter an invalid postcode
    When they confirm these sign-up details
    Then they should see an error message for invalid details

  Scenario: 01: Sign-up: Facebook Login
    Given an online customer is browsing the homepage
    And they navigate to the sign-up page
    When select the Facebook login
    Then the Facebook login page is launched