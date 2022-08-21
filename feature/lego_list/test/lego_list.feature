Feature: Lego List
    In order to know more about Lego worlds
    As a user
    I want browse the list of Lego collections

    Scenario: Lego world list is shown
        Given the flow is running with {'list'} configuration
        Then I see {ListView} widget
        And I see {'Lego Star Wars'} text
        And I see {'Lego Marvel'} text
        And I see {'Lego Harry Potter'} text
        And I see {'Lego DC'} text
    
    Scenario: Lego world grid is shown
        Given the flow is running with {'grid'} configuration
        Then I see {GridView} widget
        And I see {'Lego Star Wars'} text
        And I see {'Lego Marvel'} text
        And I see {'Lego Harry Potter'} text
        And I see {'Lego DC'} text

    Scenario: I can see world's details
        Given the flow is running with {'list'} configuration
        When I tap {'Lego Harry Potter'} text
        Then navigation to {'hp'} universe is requested

    