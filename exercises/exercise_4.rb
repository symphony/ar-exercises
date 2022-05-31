require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

surr = Store.new
surr.name = "Surrey"
surr.annual_revenue = 224000
surr.mens_apparel = false
surr.womens_apparel = true

whst = Store.new
whst.name = "Whistler"
whst.annual_revenue = 1900000
whst.mens_apparel = true
whst.womens_apparel = false

ylt = Store.new
ylt.name = "Yaletown"
ylt.annual_revenue = 430000
ylt.mens_apparel = true
ylt.womens_apparel = true

surr.save
whst.save
ylt.save

puts "- added new stores - store count: #{Store.count}"

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false )

puts "- men's stores: #{@mens_stores.length}"
@mens_stores.each {|store| puts "#{store.name}: $#{store.annual_revenue} revenue"}

@womens_stores = Store.where(mens_apparel: false, womens_apparel: true, "annual_revenue <": 1e6 )

puts "- women's stores: #{@womens_stores.length}"
@womens_stores.each {|store| puts "#{store.name}: $#{store.annual_revenue} revenue"}

puts "- done ex 4 - store count: #{Store.count}"