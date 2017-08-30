meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

h = Hash[meses.zip(ventas)]

print h, "\n"

inverted_hash = h.invert

max_value = inverted_hash.max_by{|k,v| k}

puts max_value[1]
