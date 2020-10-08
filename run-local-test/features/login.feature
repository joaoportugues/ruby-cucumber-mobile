Feature: Sign in

Background:
  Given I see "Sign in"
  And I press "Sign in"
  And I press "Sign in with email"

@NBD-1 @bug @critical
Scenario: Sign in with invalid credentials
  And I type "jtime002@gmail.com" in "Email"
  And I type "Test@-wrong-pass" in "Password"
  And I press "Sign In"
  Then I see "Email or Password is incorrect."

Scenario: Sign in with valid credentials
  And I type "jtime002@gmail.com" in "Email"
  And I type "Test@112233" in "Password"
  And I press "Sign In"
  Then I see "Explore Rewards"
  Then I see "ALL"
  Then I see "Profile Menu"

@runThis
Scenario: Sign in with valid credentials and sign out
  And I type "jtime002@gmail.com" in "Email"
  And I type "Test@112233" in "Password"
  And I press "Sign In"
  Then I see "Explore Rewards"
  Then I see "ALL"
  Then I see "Profile Menu"
  And I press "Profile Menu"
  Then I see "jtime002@gmail.com"
  And I press "Log out"
  Then I see "Sign in"
  Then I see "Sign up"




