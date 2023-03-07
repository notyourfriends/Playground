# As Internet technology is growing exponentially, people are relying more and more on
# applications to make it easier to do daily tasks. One of them is communication apps. WhatsApp is
# one of the most popular communication apps that is being used world-wide. Since several years
# ago, WhatsApp has enabled users to use their services on Desktop.

# Consider this is a full QA on whatsapp desktop application, this is top 10 most important uses cases  ordered by priority.

# based on Whatsapp Desktop Application v.2.2307.4.0 OS Win10

# The Plan
# 1. User can log in
# 2. User can sends messages from contact 
# 3. User can receives messages from contact 
# 4. User can create a new chat/group chat
# 5. User can makes a call
# 6. User can receives a call
# 7. User can sends files to a contact
# 8. User can changes their profile/settings
# 9. User can deletes a messages or chat
# 10. User can log out 

#Backtrack
Scenario: User log in to Whatsapp Desktop Application
Given the user has downloaded and installed Whatsapp Desktop Application 
When the user navigate to WhatsApp Desktop Application login page
And the user linked their devices via QR Code by their phone
Then the user is successfully logged in to WhatsApp Desktop Application

Scenario: User can sends messages from contact 
Given the user is logged in to Whatsapp Desktop Application
And the user is on the home screen
When the user selects a contact from contact list
And chat window for a selected contact appears
And the user types a message and sends it
Then the messages is successfully delivered to the selected contact


Scenario: User can receives messages from contact 
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen 
And the user has at least one contact who has sent a message
When the user select the contact who has sent a message
Then messages a chat window for the selected contact appears
And the user can view the message content
And the user can respond to the message

Scenario: User can create a new chat/group chat
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen 
When the user selects one or more contact from contact list 
And the user types the messages and send it
Then the messages is successfully delivered and displayed in the new chat or group chat window
And all selected contact are added to the new chat or group chat

Scenario: User can makes a call
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen 
When the user selects a contact from contact lists
And the user initiates a call by clicking call button
Then the user should be connected to the call with the selected contact
And a new call window opens with audio enabled
And the user can hear the recipient's voice on the call
And the recipient can hear the user's voice on the call
And the user can end the call by clicking end button
And the call should be disconnected successfully

Scenario: User can receives a call
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen
When the user receives a call from a contact
Then a new notification pop up window is appears
And the user can choose to accept or decline the call
And if the user accept the call, a new call window opens with audio is enabled
And the user can hear the caller's voice on the call
And the caller can hear the user's voice on the call
And if the user decline the call, the call is disconnected successfully

Scenario: User can sends files to a contact
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen
When the user selects a contact from contact list
And a chat window to the selected contact is appears
And the user attach a file by clicking the attach button and send it
Then the files is successfully sent to the selected contact 
And the user receives a confirmation messages

Scenario: User can changes their profile/settings
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen
When the user clicks on their profile picture/settings on bottom left corner
Then the user's profile information and settings page opens
And the user can edit their profile picture by clicking current profile picture and upload a new one
And the user can edit their name by clicking a name field and type a new name
And the user can edit their status by clicking a status field and type a new status
And the user can edit their phone number by clicking a phone number field and type a new phone number
And the user can edit their theme on selected Theme color on general setting
And the user can save their settings by clicking save button
Then the new changes take effect immediately 

Scenario: User can deletes a messages/chat
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen
And the user has at least one chat with  a contact or a group
When the user selects a message or a chat that they want to delete
Then the user clicks on the delete button/icon
And a confirmation dialog box appears
And the user confirms the deletion of message or a chat
And the message/chat is deleted from the chat history
And the message/chat is removed from both user's and the contact/group's devices

Scenario: User can log out
Given the user is logged in to WhatsApp Desktop Application
And the user is on the home screen
When the user clicks on profile picture/settings on bottom left corner
And the user choose General setting option
And the user clicks on Log Out button
Then a confirmation dialog box appears
And the user confirms the log out action
Then the user is successfully logged out from WhatsApp Desktop Application
And the user is redirected back to the Login Page 
