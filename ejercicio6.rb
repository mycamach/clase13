menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }

expensive = menu.max_by{|k,v| v}
puts expensive[0]

cheapest = menu.min_by{|k,v| v}
puts cheapest[0]
suma = menu.values.inject(0){|sum, x| sum + x}

puts suma / menu.size

dishes = menu.keys

print dishes, "\n"

prices = menu.values
print prices, "\n"

menu.each {|k, v| menu[k] = v * 1.19}
print menu, "\n"
#menu.select{|k,v| k.split.size > 1}
#special.each {|k,v| special[k] = v * 0.8}
#print special

special = {}
menu.each do |k,v|
	if k.split.size > 1
		special[k] = v * 0.8
	end
end
puts special
