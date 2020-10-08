Feature: Landing page

Background:
  Given I see "Sign in"
  And I see "Sign up"

Scenario: Can check sign in is working
  And I press "Sign in1"
  Then I see "Sign in with email"

Scenario: Can check sign up is working
  And I press "Sign up"
  Then I see "Sign up with email"
