Feature: Signup

  Scenario: Creating a new user in signup
    Given url 'https://api.demoblaze.com/signup'
    And request { "username": "nicole.asqui", "password": "password123" }
    When method POST
    Then status 200
    And def responseJson = response
    And match responseJson.errorMessage contains ''

  Scenario: Trying to create an existing user in signup
    Given url 'https://api.demoblaze.com/signup'
    And request { "username": "nicole.asqui", "password": "password123" }
    When method POST
    Then status 200
    And match response.errorMessage == "This user already exist."

