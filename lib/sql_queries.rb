# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "SELECT title, sum(amount) from projects left join pledges on projects.id = pledges.project_id group by title order by title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "SELECT NAME, AGE, SUM(AMOUNT) FROM PLEDGES LEFT JOIN USERS ON PLEDGES.USER_ID = USERS.ID GROUP BY NAME, AGE ORDER BY NAME;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "SELECT TITLE, SUM(AMOUNT) - FUNDING_GOAL FROM PROJECTS LEFT JOIN PLEDGES ON PROJECTS.ID = PLEDGES.PROJECT_ID GROUP BY TITLE HAVING SUM(AMOUNT) >= FUNDING_GOAL;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "SELECT NAME, SUM(AMOUNT) FROM USERS LEFT JOIN PLEDGES ON USERS.ID = PLEDGES.USER_ID GROUP BY NAME ORDER BY SUM(AMOUNT); "
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "SELECT CATEGORY, SUM(AMOUNT) FROM PROJECTS LEFT JOIN PLEDGES ON PROJECTS.ID = PLEDGES.PROJECT_ID WHERE CATEGORY = 'music' GROUP BY CATEGORY; "
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "Write your SQL query Here"
end
