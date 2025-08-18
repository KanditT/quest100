Feature: Brag Page
  As a user
  I want to view my goals and actions for 2025
  So that I can track my personal and professional development

  Background:
    Given I am on the brag page

  Scenario: View brag page content
    Then I should see "My Brag Page" as the main title
    And I should see "Goals & Actions 2025" in the header
    And I should see "My journey to improvement" as the subtitle

  Scenario: View goals section
    Then I should see the goals section with title "Goals for this year (2025)"
    And I should see 3 goals listed:
      | Goal | Description |
      | Typing | able to type at speed 55 wpm with accuracy 95% |
      | English | improve my English skill and achieve IELTS band 6.0 plus |
      | Understand and able to work & apply | Git and Scrum |

  Scenario: View actions and contributions
    Then I should see "Action & Contribution 🚀" section
    And I should see the following action categories:
      | Category | Items |
      | 📚 Self | Learn ENG from Speechful/Duolingo: at least 1 lesson per day, Learn everyday at ODT, Typing 20 mins everyday for 2 months |
      | 👥 Team | Communicate more with team |
      | 🏫 ODT | Learning and improve at Academy ODT |
      | 🤝 Client | Working on BMA project, Working on TMLT project |
      
  Scenario: Verify page styling and layout
    Then the page should have proper container styling
    And all sections should have appropriate borders and backgrounds
    And the back button should have hover effects