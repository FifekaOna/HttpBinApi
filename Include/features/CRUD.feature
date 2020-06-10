#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
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
      
      
     