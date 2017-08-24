#WELLNESS CHECKLIST

#this is a simple program, that gives lets you create healthy habits as reminders todo routinely

##### PSEUDOCODE #####

#1. allow user to create a list, 
#   name it and populate it with habits that they would like to routinely like to perform.

#2. allow a user to update list items as completed

#3. allow a user to check completed items

#4. allow a user to check incomplete items

require 'sqlite3'
#require 'faker'
db = SQLite3::Database.new("wellness_list.db")
db.results_as_hash = true

def create_wellness_list(list_name)

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS list_name(
    id INTEGER PRIMARY KEY,
    habit_name VARCHAR(255),
    time_frame VARCHAR(255)
    completed BOOLEAN
  )
SQL

db.execute(create_table_cmd)
end

#1. allow user to create a list, 
#   name it and populate it with habits that they would like to routinely like to perform.


def create_habit(db, habit_name, time_frame, completed)
  db.execute("INSERT INTO wellness_list (habit_name, time_frame, completed) VALUES (?, ?, ?)", 
  [habit_name, time_frame, completed])
end

def create_habit(db, habit_name, time_frame, completed)
	#2. allow a user to update list items as completed
	puts ""
    db.execute("UPDATE wellness_list (completed) VALUES (?, ?, ?)", 
    [completed])
end

def create_habit(db, habit_name, time_frame, completed)
  db.execute("INSERT INTO wellness_list (habit_name, time_frame, completed) VALUES (?, ?, ?)", 
  [habit_name, time_frame, completed])
end











