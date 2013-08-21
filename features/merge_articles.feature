Feature: Merge Articles
	As a blog administrator
	In order to remove duplicating articles
	I want to be able to merge two articles

	Background:
		Given the blog is set up
		And the publisher user exists
		And the contributor user exists

	Scenario:
		Given I am logged into the admin panel
		And I am on the first post for merge page
		Then I should see element with id "merge_with"
		And I should see "Merge Articles"

	Scenario:
		Given I am logged in as publisher
		And I am on the first post for merge page
		Then I should not see element with id "merge_with"
		And I should not see "Merge Articles"

