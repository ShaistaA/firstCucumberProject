

Feature: Amazon Search
  
    #wait for the element to be visible
    #this could be any searched item or any text unique to the search page.
    #get text of the search criteria text element 
		#verify it matches the search input

@AmazonSearchCriteria                 
  Scenario: As a User, I am is able to search 
    Given I am on amazon home page 
    When I search "<testdata>" 
    And click search
    Then I should see "<testdata>" as search result 

    
    
 

    Examples: 
      | 			testdata           | 
      |     coffee mug           |
    #  |     pretty coffee mug    | 
    # |     cool coffee mug      | 
     # |     cute coffee mug      | 
     
