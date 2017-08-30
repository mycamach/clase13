inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10,
"Impresoras": 6}

def add_element(hash)
  puts "Agrega un artículo al inventario con su stock (ej: Notebook, 4)"
  input = gets.chomp.split(',').map{ |elem| elem.strip }
  hash[input[0].to_sym] = input[1].to_i
  print input
end




puts "Sistema de inventario", "\n"

puts "Ingrese 1"
puts "Ingrese 2"
puts "Ingrese 3"
puts "Ingrese 4"
puts "Ingrese 5"
puts "Ingrese 6"
puts "Ingrese 7 para salir"

selection = gets.chomp

puts case selection

when '1'
"Ingrese artículo y su stock (ej: Notebook, 4 )"
add_element = gets.chomp
inventario(selection_1)
puts inventario

when '2'
when '3'
when '4'
when '5'
when '6'
when '7'
else
puts   