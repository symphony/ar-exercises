require_relative '../setup'

puts "Exercise 1"
puts "----------"

bby = Store.new
bby.name = "Burnaby"
bby.annual_revenue = 300000
bby.mens_apparel = true
bby.womens_apparel = true

rch = Store.new
rch.name = "Richmond"
rch.annual_revenue = 1260000
rch.mens_apparel = false
rch.womens_apparel = true

gas = Store.new
gas.name = "Gastown"
gas.annual_revenue = 190000
gas.mens_apparel = true
gas.womens_apparel = false

bby.save
rch.save
gas.save

puts "- done ex 1 - store count: #{Store.count}"