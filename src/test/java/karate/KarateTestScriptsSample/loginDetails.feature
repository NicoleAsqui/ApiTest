Feature: Login API Testing
  Scenario: Testing login with correct username and password
    Given url 'https://api.demoblaze.com/login'
    And request { "username": "nicole.asqui", "password": "password123" }
    When method POST
    Then status 200

  Scenario: Testing login with incorrect username and password
    Given url 'https://api.demoblaze.com/login'
    And request { "username": "nicole.asqui", "password": "password1231" }
    When method POST
    Then status 200
    And match response.errorMessage == "Wrong password."
