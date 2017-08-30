h = {x: 1, y:2}

h[:z] = 3

h[:x] = 5

h.delete(:y)

# h.each_key {|k|} puts "yeahh" if k == :z }

puts 'yeaah' if h.include?(:z)

puts h.invert
