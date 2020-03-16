Feature: Create Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "Daily"
    And I fill in "category_keywords" with "Mood"
    And I fill in "category_permalink" with "general"
    And I fill in "category_description" with "stay at home"
    And I press "Save"

    Then I should see "Daily"
    Then I should see "Mood"
    Then I should see "general"
    Then I should see "stay at home"
    
    Then I follow "Daily"
    
    When I fill in "category_name" with "Daily1"
    And I fill in "category_keywords" with "Mood1"
    And I fill in "category_permalink" with "general1"
    And I fill in "category_description" with "stay at home1"
    And I press "Save"

    Then I should see "Daily1"
    Then I should see "Mood1"
    Then I should see "general1"
    Then I should see "stay at home1"