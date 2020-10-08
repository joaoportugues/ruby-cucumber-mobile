Feature: Sign up

Background:
  Given I see "Sign in"
  And I press "Sign up"
  And I press "Sign up with email"

Scenario: Sign up with valid credentials, skip bio data
  And I type "Random" in "First Name"
  And I type "Random" in "Last Name"
  And I type "Random Email" in "Email"
  And I type "Test!112233" in "Password"
  And I press "Go"
  Then I see "Birth Date"
  Then I see "Country"
  And I press "Skip"
  Then I see "Explore Rewards"
  Then I see "ALL"








