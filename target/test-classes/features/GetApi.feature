Feature: GET requests
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
  
Scenario: check Get all bookings 
    Given path '/booking'
    When method get
    Then status 200
Scenario: Get request By ID
    Given path '/booking/5'
    When method get
    Then status 200