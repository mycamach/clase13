inventario = {"Notebooks": 4, "Computador Escritorio": 6, "Routers": 10, "Impresoras": 6}

print inventario

def add_element(hash)
  puts "Agrega un item, ejemplo: Pendrives, 100"
  #gets da string, split da arrays
  input = gets.split(',').map { |ele| ele.strip } 
  hash[input[0].to_sym] = input[1].to_i
  print hash
end

def delete_element(hash)
  print hash, "\n"
  puts "Ingrese el ítem a borrar"
  choice = gets.chomp.split.map(&:capitalize).join(' ')
  hash.delete(choice.to_sym) {|ele| puts "#{ele} no se encuentra en el inventario"}
  print hash
end

def update_element(hash)
  print hash,"\n"
  puts "Ingresa el ítem a editar"
  # puts 'one TWO three foUR'.split.map(&:capitalize).join(' ')
  updated_element = gets.chomp.split.map(&:capitalize).join(' ')
  puts "Ingresa el nuevo stock"
  updated_stock = gets
  hash[updated_element.to_sym] = updated_stock.to_i
  print hash
end

puts "Sistema de inventario"
puts '########################################################'
option = 0
while option != '7'
  puts "ingresa 1 para agregar"
  puts "ingresa 2 para eliminar"
  puts "ingresa 3 para actualizar"
  puts "ingresa 4 para ver resumen de stock"
  puts "ingresa 5 para ver el item con mayor cantidad de stock"
  puts "ingresa 6 para ver si existe el item"
  puts "ingresa 7 para salir"

  option = gets.chomp

  puts case option
  when '1'
    add_element(inventario)
  when '2'
  	delete_element(inventario)
    
  when '3'
    update_element(inventario)

  when '4'

  when '5'

  when '6'
  end
end
