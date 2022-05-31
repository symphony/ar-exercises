require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

def create_person
  puts "new person acceptable?: " + yield.valid?.to_s
end

@new_person1 = create_person { @new_employee = @store1.employees.create(first_name: "REAL", last_name: "PERSON", hourly_rate: 60) }
@new_person2 = create_person { @new_employee = @store1.employees.create(last_name: "NOT REAL", hourly_rate: 50) }

@store1.save

# puts Employee.joins(:stores).where(store_id: == 1)

puts "enter store name"
custom_name = gets.chomp

@new_store = Store.new
@new_store.name = custom_name
@new_store.annual_revenue = 400000
@new_store.mens_apparel = false
@new_store.womens_apparel = true

puts @new_store.save!

puts "- done ex 7 - store count: #{Store.count}"
puts "- employee count: #{Employee.count}"
