@regression @itemsTests
Feature: Items Management

Background: 
 		Given As an enrity user, I am logged in
    And I navigate to Items tab

  @createItem @smoketest
	Scenario: As a user, I am able to create an item or a service
    When I click on the Add Item button
    Then I should be on item input page
    When I provide item information name "iphone", price "18.00", unit "pc", and description "a good iphone"
    And I click Save Item button
    Then The Item is added to the Item list table
    
   
  @createItemDB
	Scenario: As a user, I am able to create an item or a service on UI and check the item in DB
    When I click on the Add Item button
    Then I should be on item input page
    When I create an item with following information
		| Cake | 2100 | dz | cold ice cream |
    Then The Item is added to the Item list table
    And I should be able to see the item in database
    When I delete the Item created above
    Then The item is no longer in the items list table
    
  @createItemInDB
	Scenario: As a user, I am able to insert and delete a record into database 
		When I insert a record into database called "Xbox"
		Then Item should be listed in the items table on the UI
    When I delete the Item created above
    Then The item is no longer in the items list table
    
  @createItemWithDataTable @smoketest
	Scenario: As a user, I am able to create an item or a service
    When I click on the Add Item button
    Then I should be on item input page
    When I provide item information to the fields
    |MacBook Pro| 180000 | box | a good thing |
    And I click Save Item button
    Then The Item is added to the Item list table
    
  @updateItemDB
	Scenario: As a user, I am able to create an item or a service on UI and check the item in DB
    When I click on the Add Item button
    Then I should be on item input page
    When I create an item with following information
		| Cake | 2100 | dz | cold ice cream |
    Then The Item is added to the Item list table
    And I should be able to see the item in database
    When I update the item price to 1800
    Then The item price has been upddated to 1800 in database
    When I delete the Item created above
    Then The item is no longer in the items list table
    
   @updateItem
   Scenario: As a user, I am able to update an item or a service
    When I select the item name "Ice522"
    And I should be on item details page
    When I update the item price to 80000 dollars
    And I click Update Item button
    Then the Item price is updated to 800 dollars
    
  @createAndDeleteItem 
	Scenario: As a user, I am able to create and delete an item or a service
    When I click on the Add Item button
    Then I should be on item input page
		When I create an item with following information
		| IceCream | 2100 | dz | cold ice cream |
    Then The Item is added to the Item list table
    When I delete the Item created above
    Then The item is no longer in the items list table
    
  @createAndUpdateAndDeleteItem
	Scenario: As a user, I am able to create then update and delete an item or a service
    When I click on the Add Item button
    Then I should be on item input page
		When I create an item with following information
		| Ice | 2100 | dz | cold ice cream |
    Then The Item is added to the Item list table
    When I select the item name "Ice"
    And I should be on item details page
    When I update the item price to 80000 dollars
    And I click Update Item button
    Then the Item price is updated to 800 dollars
    Then The Item is added to the Item list table
    When I delete the Item created above
    Then The item is no longer in the items list table
    
   
  @createAndDeleteAnItemOnUIandVerifyOnDataBase 
	Scenario: As a user, I am able to create and delete an item or a service on UI and check the item in DB
		When I click on the Add Item button
    Then I should be on item input page
    When I create an item with following information
		| Cake | 2100 | dz | cold ice cream |
    And I should be able to see the item in database
    When I delete the Item created above 
    Then The Item will be deleted in the database
    
  @deleteItemInDB
	Scenario: As a user, I am able to insert and delete a record into database 
		When I insert a record into database called "Xbox"
		Then Item should be listed in the items table on the UI
    When I delete the item created above via db
    Then The Item is added to the Item list table
   
  @deleteItemInDB
  Scenario: As a user, I am able to create and delete an item in DB and check the item in DB
    When I insert a record into database called "Xbox"
    Then Item should be listed in the items table on the UI
    When I delete the item created above via db
    And I refresh the page
    Then The item is no longer in the items list table