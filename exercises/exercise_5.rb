require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total = Store.sum(:annual_revenue)
@average = Store.average(:annual_revenue)
@profitable = Store.where("annual_revenue > ?", 1e6)

puts "Total revenue: $#{@total}, average: $#{@average}"

puts "- profitable stores: #{@profitable.length}"
@profitable.each {|store| puts "#{store.name}: $#{store.annual_revenue} revenue"}

puts "- done ex 5 - store count: #{Store.count}"