Feature: API testing
  Background:
    * url 'https://reqres.in/api'
    * def expectedOutput = read("output.json")


  Scenario: testing POST api

    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response

  Scenario: testing POST api

    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response
    And match response == {"name": "morpheus","job": "leader","id": "#string", "createdAt": "#ignore"}

  Scenario: testing POST api
#reading output data from another file and asserting with request
# we can use $ instead of response
    Given path '/users'
    And request {"name": "morpheus", "job": "leader"}
    When method POST
    Then status 201
    And print response
    And match $ == expectedOutput
    And print expectedOutput


  Scenario: testing PUT api

    Given  path '/users/2'
    And request {"name": "morpheus", "job": "leader"}
    When method put
    Then status 200
    And match  response.name == "morpheus"


  Scenario: testing ui automation

    Given  driver 'https://www.google.com/'






