require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "yes", last_name: "hey", hourly_rate: 32)
@store2.employees.create(first_name: "hello", last_name: "me", hourly_rate: 50)
@store2.employees.create(first_name: "potato", last_name: "noodle", hourly_rate: 600)

@store1.save
@store2.save

puts "total employees: #{Employee.count}"

puts "- done ex 6 - store count: #{Store.count}"