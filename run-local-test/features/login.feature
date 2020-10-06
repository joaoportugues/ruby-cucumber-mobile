Feature: Sign in

Background:
  Given I see "Sign in"
  Given I press "Sign in"
  And I press "Sign in with email"

Scenario: Sign in with invalid credentials
  And I type "jtime002@gmail.com" in "Email"
  And I type "Test@112233" in "Password"
  And I press "Sign In"
  Then I see "Email or Password is incorrect."




