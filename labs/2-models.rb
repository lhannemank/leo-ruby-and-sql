# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.
new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Lar"
new_salesperson["last_name"] = "Hanivar"
new_salesperson["email"] = "lar.hanivar@gmail.com"
new_salesperson.save

new_salesperson = Salesperson.new
new_salesperson["first_name"] = "Joe"
new_salesperson["last_name"] = "Jonivar"
new_salesperson["email"] = "joe@jonivar.com"
new_salesperson.save
# 3. write code to display how many salespeople rows are in the database
puts "There are #{Salesperson.all.count} salespeople"
# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
joe = Salesperson.find_by({"first_name" => "Joe"})
# in real life, you'd use "id" in a find_by, not "first_name"
joe["email"] = "joe.jonivar@gmail.com"
joe.save
#puts joe["email"]

# CHALLENGE:
# 5. write code to display each salesperson's full name
# for salesguy in Salesperson
# Salesperson.all.each do |salesperson|
#     puts "#{salesperson['first_name']} #{salesperson['last_name']}"
#   end

salespeople = Salesperson.all
  for person in salespeople
    puts "#{person["first_name"]} #{person["last_name"]}"
  end
# salesguy1 = Salesperson[0]
# puts Salesperson[0]


# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
