Feature: modify an existing question
  
  As an admin
  So that I can update a question in the database
  I want to add a new question
  
  Background: questions in database
 
  Given the following questions exist:
  | qtype             | topic  | content       | option1 | option2 | option3 | option4 | answer  |  explanation | display   |
  | Multiple Choice   | topic1 | Question 1    | opt1    | opt2    | opt3    | opt4    | option1 |  exp1        | false        |
  | Multiple Choice   | topic1 | Question 2    | opt1    | opt2    | opt3    | opt4    | option2 |  exp2        | true       |
  | Multiple Choice   | topic2 | Question 3    | opt1    | opt2    | opt3    | opt4    | option4 |  exp3        | false        |
  
  Given I am an admin
  
  Scenario: see all existing questions
  When I am on the questions page
  Then I should see "Question 1"
  Then I should see "Question 2"
  Then I should see "Question 3"
  Then I should see "Yes"
  
  
  Scenario: path of editing an existing question
  When I am on the questions page
  And I follow "Edit" of "1"
  Then I should be redirected to Edit Question Page of "1"
  
  Scenario: destroying an existing question
  When I am on the questions page
  And I follow "Destroy" of "1"
  And I should be redirected to "Show" of "1"
  And "Question 1" should not be in the Question List
  
  Scenario: updating a mcq question to a tf question
    When I am on the questions page
    And I follow "Edit" of "1"
    And I select "True or False" from "question_qtype"
    And I press "Update Question"
    Then I should see "nil"
    And I should not see "option3"
    And I should not see "option4"
    And I should not see "opt1"
    And I should not see "opt2"
    And I should see "True"
    And I should see "False"
    
  Scenario: updating topic of a mcq question
    When I am on the questions page
    And I follow "Edit" of "1"
    And I select "True or False" from "question_qtype"
    And I select "topic2" from "question_topic"
    And I press "Update Question"
    Then I should see "topic2"
    And I should see "True or False"
    
  Scenario: updating a tf question to a mcq question
    When I am on the questions page
    And I follow "Edit" of "1"
    And I select "Multiple Choice" from "question_qtype"
    And I press "Update Question"
    Then I should see "Question was successfully updated."
    And I should be redirected to "Show" of "1"
    
  # Scenario: updating invalid question (sad path)
  #   When I am on the questions page
  #   And I follow "Edit" of "1"
  #   And I select "Multiple Choice" from "question_qtype"
  #   And I fill in "question_content" with ""
  #   And I press "Update Question"
  #   Then I should not see "Question was successfully updated."
  #   And I should be redirected to "Edit" of "1"
    
    Scenario: updating approve setting
    When I am on the questions page
    And I follow "Edit" of "1"
    And I select "Yes" from "question_display"
    And I press "Update Question"
    Then I should see "Question was successfully updated."
    And I should be redirected to "Edit" of "1"
    And I should see "Yes"
    
    Scenario: approving an awaiting question
    When I am on the questions page
    And I follow "Approve" of "1"
    Then I should see "Question was successfully approved."
    And I should be redirected to the questions page
    And I follow "Show" of "1"
    And I should see "Yes"
    
    # Scenario: delete a question
    # When I am on the questions page
    # And I follow "Destory" of "1"
    # Then I should see "Question was successfully deleted."
    # And I should be redirected to the questions page
    # And I should not see "Question 1"