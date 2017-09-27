Feature: Validation of 'Select value screen'
  Number of Scenario(s):   2

  Scenario Outline: Verification of first and second picker for iOS
    When I select 30 in <picker> for iOS
    Then I should see 30 selected in <picker> for iOS
    
    Examples:
       | picker        |
       | first picker  |
       | second picker |
             

  Scenario Outline: Verification of first and second picker for Android
    When I select 30 in <picker> for Android
    Then I should see 30 selected in <picker> for Android
    
    Examples:
       | picker        |
       | first picker  |
       | second picker |