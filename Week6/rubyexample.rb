#!/usr/bin/ruby

puts "Hello"
puts("Hi there")

value = "blah"

items = [1,2,5,26,13,14]

puts("The value is " + value)

puts "First List"
items.each do | items |
    puts(items)
end

puts "Second List"
for i in 0.step(5)
    puts(items[i])
end

puts "Next list"
items.each { | item | puts(item) }

puts "Last list"
puts(items)
