personas = %w[Carolina Alejandro Maria Jesús Valentín]
edades = [32, 28, 41, 19]

h = Hash[personas.zip(edades)]

print h, "\n"

def weird_method(hash, key)
  hash[key]
end

puts weird_method(h, 'Carolina')
