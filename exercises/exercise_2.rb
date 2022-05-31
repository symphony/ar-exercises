require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

@store1.name = "hello?"

puts "-- name before: #{Store.find_by(id: 1).name}"
@store1.save
puts "-- name after: #{Store.find_by(id: 1).name}"
puts "- done ex 2 - store count: #{Store.count}"