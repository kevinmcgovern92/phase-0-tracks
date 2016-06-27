# Pseudocode - Write my own to do list app
# Create/interact with a database
# Store data in the db using gets.chomp commands
# Allow user to access/change data
# Show the list for any given day
  # Will have to use dates in SQL

require 'sqlite3'


to_do_data = SQLite3::Database.new("to_do.db")
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    description VARCHAR (255),
    urgency VARCHAR (255),
    due_date DATE
    )
SQL

to_do_data.execute(create_table_cmd)

reveal_all = to_do_data.execute("SELECT * FROM items")

def add_item(db, description, urgency, due_date)
  db.execute("INSERT INTO items (description, urgency, due_date) VALUES('#{description}', '#{urgency}', #{due_date})")
end

puts "Hello. This is your command line to do list app"
puts "What is today's date?"
today = gets.chomp
today_date = Date.parse(today)
puts "Here is what you have lined up for today:"
to_do_data.execute("SELECT * FROM items WHERE due_date = #{today_date}")
puts "Anything to add to the list?"
decision = gets.chomp
if decision.downcase == "yes"
  puts "What do you need to do?"
    descr = gets.chomp
    puts "How urgent is it?"
    urgent = gets.chomp
    puts "When does it need to be done?"
    due_on = gets.chomp
    due_date = Date.parse(due_on)
    add_item(to_do_data, descr, urgent, due_date)

#  puts "Okay. How many items?"
#  operation_number = gets.chomp.to_i
#  operation_number.times do
#    puts "What do you need to do?"
#    descr = gets.chomp
#    puts "How urgent is it?"
#    urgent = gets.chomp
#    puts "When does it need to be done?"
#    due_on = gets.chomp
#    due_date = Date.parse(due_on)
#    add_item(to_do_data, descr, urgent, due_date)
  # end
else
  puts "Well if that's all, I think we're done here."
end
p reveal_all