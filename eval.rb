require './lib/dayz.rb'

puts "Year?"
year = gets.to_i
puts "Month?"
month = gets.to_i
puts "Day?"
day = gets.to_i

calendar = DayOfWeek.new
puts calendar.datez(year, month, day)
