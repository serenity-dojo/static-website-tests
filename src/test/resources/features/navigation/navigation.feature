Feature: Navigation

  Site visitors should be able to see and access the contents of the site through the navigation menus

  Vicky is a visitor on the site

  Scenario: Main menu navigation
    When Vicky is on the LTA home page
    Then she should be able to navigate to the following sections though the top level menu
      | Who We Are             |
      | Upcoming Projects      |
      | Getting Around         |
      | Industry & Innovations |

  Scenario Outline: Sub-menu navigation
    Given Vicky is on the LTA home page
    When she opens the <Top Level Menu> menu
    And she should be able to navigate to each of the sections in <Sub Menus>
    Examples:
      | Top Level Menu    | Sub Menus                                                                             |
      | Who We Are        | Our Organisation, Our Work, Career,  Statistics & Publications                        |
      | Upcoming Projects | Rail Expansion, System Renewal, Road & Commuter Facilities, Technologies & Innovation |
      | Getting Around    | Public Transport, Active Mobility,Taxis & Private Hire Cars, Driving in Singapore     |
#
#    Scenario: Banner cards
#      When Vicky is on the LTA home page
#      Then she should be presented with the card section with 4 cards
#      And she should be able to navigate to the details of each ad