Feature: POST requests
  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Accept = 'application/json'
  
Scenario: check Post request 
    Given path '/booking'
    And request { "firstname" : "Jim","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"additionalneeds" : "Breakfast"}
    When method POST
    Then status 200
    And def booking = response 
    Given path '/booking/'+booking.id
    When method GET
    Then status 200
    And match $ contains {id:'#(booking.id)',name:'#.      (booking.firstname)',name:'#.      (booking.lastname),totalprice:'#.      (booking.totalprice)}