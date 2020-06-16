#Author: Fifeka Onanda Wahid

@tag
Feature: CRUD API form HttpBinApi

  @tag1
  Scenario Outline: Assert CRUD API form HttpBinApi response
    
    When I request <post_api>
    Then I verify the status code is 200
    And I verify the url value in payload is <url>

    Examples: 
      |post_api| url                       |
      | Create | http://httpbin.org/post   |   
      | Update | http://httpbin.org/put    |   
      | Read   | http://httpbin.org/get    |    
      | Delete | http://httpbin.org/delete |   
      
      
     