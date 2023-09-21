
Feature: Portal /portal API Endpoint

  Background:
    Given AccessOne Scim server is available

@CIAM-576
Scenario: Validate the apps in the response
    Given I have a valid AccessOne user token
    And I access the portal/applicationdetails Resource
    Then the http status code is 200
    And the array in section "myApps" has an entry with the field "appId" with a value of "c49c48c7-271b-48cc-a8a1-f470d0b26766"
    And the array in section "myApps" has an entry with the field "appName" with a value of "eCare NEXT®"






