Feature: API testing
  Background:
    * url 'https://reqres.in/api'


  Scenario: testing Get api

    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response

  Scenario: testing Get api with background

    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And match response.data[0].id != null
    And assert response.data.length>0

  Scenario: testing Get api with background and param

    Given path '/users'
    When method GET
    Then status 200
    And print response
    And match $.data[0].id != null

  Scenario: testing Get api with Query param
    * def query = {status : 'active', gender:'female', id:909431}

    Given url 'https://gorest.co.in/public/v2/users'
    And params query
    When method GET
    Then status 200
    And print response

  Scenario: testing Get api with background and headers

    * def headerString = {Content-Type: 'application/json; charset=utf-8', Cache-Control: 'max-age=0, private, must-revalidate'}

    Given headers headerString
    And url 'https://gorest.co.in/public/v2/users'
    When method GET
    Then status 200
    And print response

  Scenario: testing Get api with background and headers with configure
    * configure  headers = {Content-Type: 'application/json; charset=utf-8', Cache-Control: 'max-age=0, private, must-revalidate'}

    Given url 'https://gorest.co.in/public/v2/users'
    When method GET
    Then status 200
    And print response







