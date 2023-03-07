#The Plan
Given I am on the homepage
When I click on Search
And I search for "Chair"
And I click on Add to basket
And I click on the shopping basket
And I click on Payment options
And I select "iDeal"
And I click on Complete Payment
And I click on Confirm Payment
Then I should see "Thank you for ordering"

#Backtrack
Scenario: Search a product
Given the user is on the homepage
When the user searches for "Chair"
Then the "Chair" product page should display

Scenario: Add to basket
Given the user is on the product "Chair"
When the user clicks on the add to basket button
Then the product should be in the basket

Scenario: Go to payment options
Given product "Chair" is in the shopping basket
When the user clicks on go to payment
Then the payment page should display

Scenario: Submit payment options
Given the user is on the payment page with product "Chair"
When the user submits valid payment information
Then the "Thank you for ordering" message should display







# Scenario: user in first page of whatsapp desktop

# Scenario: user can use bar code via phone

# Scenario: user fill the number to login

# Scenario: user can create new chat



# Scenario: user in a home page
# Given Start to type your Given step 
# Then Start to type your Then step here 
# And Start to type your And step here