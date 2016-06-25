# Pseudocode - Write my own to do list app
# Create/interact with a database
# Store data in the db using gets.chomp commands
# Allow user to access/change data
# Show the list for any given day
  # Will have to use dates in SQL
to_do_data = SQLite3::Database.new("to_do.db")
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    description VARCHAR (255),
    urgency VARCHAR (255),
    due_date DATE
    )
SQL

