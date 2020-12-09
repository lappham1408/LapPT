Feature: Login Functionality
    I want to check the Login Functionality

    Background:
        Given The login page is opened successfully
    @valid
    Scenario: Input valid account
        When user input "lappt" for username and "lappt1408" for password
        Then show meesage "valid account" should be displayed

    Scenario Outline: Input invalid account
        When user input <username> for the username and <password> for the password
        Then a message <message> should be displayed

        Examples:
            | username | password   | message         |
            | lappt    | lappt2408  | Invalid account |
            | lapppt   | lappt34088 | Invalid account |