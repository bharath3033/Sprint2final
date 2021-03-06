Feature: DemoWebShop Registraion process
Scenario: User should move from DemoWebShop page to Registration page
Given User is on DemoWebShop page
When User click on Register button
Then User is on Registration Page

Scenario Outline: Test Registration process with Valid credintials
Given User is on DemoWebShop page
When User click on Register button
And User clicks on the <gender>
And User enters <firstname> and <lastname>
And User types <email>
And User Types <password> , <confirmpass>
And User Clicks on Register button
Then User is succesfully registered
Examples: 
      |gender|firstname|lastname|email|password|confirmpass|
      |male|bharath|Kalyan|bharath753@gmail.com|bharath915|bharath915|

Scenario Outline: Test Registration process with inValid credintials
Given User is on DemoWebShop page
When User click on Register button
And User clicks on the <gender>
And User enters <firstname> and <lastname>
And User types <email>
And User Types <password> , <confirmpass>
And User Clicks on Register button
Then User should not able to registered
Examples: 
      |gender|firstname|lastname|email|password|confirmpass|
      |other|sam|ruth|kalyani12@gmail.com|Yogesh098@|Yogesh098@|
#       |male|yogesh|Burada|le1tmqmd3ui5a12a345@gmail.com|y|yogesh09|
#    |female|mamatha|sosu|menta12lmadte5dxty65a4@gmail.com|yogesh|yogesh|




