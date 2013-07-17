Feature: Signing in

  Scenario: Unsuccessful signup
    Given a user visits the signin page
    When he submits invalid signin information
    Then he should see an error message
    
  Scenario: Successful signup
    Given a user visits the signin page t
      And the user has an account
      And the user submits valid signin information
    Then he should see his profile page
      And he should see a signout link