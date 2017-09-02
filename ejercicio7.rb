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

def stock_summary(hash)
  stock = hash.values.inject(0) {|sum, v| sum + v}
  puts "El inventario actual tiene #{stock} ítems"
end

def max_stock(hash)
  max = hash.max_by {|key, value| value}
  puts "El producto con mayor stock es #{max[0]}."
end

def check_if_exists(hash)
  puts "Ingresa el ítem que quieres chequear"
  item = gets.chomp.split.map(&:capitalize).join(' ').to_sym
  result = hash[item]
  if result # = true / Si lo encuentra no tira nil e imprime
  	puts "El ítem SI se encuentra en el inventario"
  else
  	puts "Eĺ ítem NO se encuentra en el inventario"
  end
end

=begin
puts "El producto #{item.to_s}"
result? "se encuentra en el inventario" : "no se encuentra en el inventario"
=end


puts "Sistema de inventario"
puts '########################################################'
option = 0
while option != '7'
  puts "Ingrese 1 para agregar un ítem"
  puts "Ingrese 2 para eliminar un ítem"
  puts "Ingrese 3 para actualizar la información de un ítem"
  puts "Ingrese 4 para ver la cantidad de stock total"
  puts "Ingrese 5 para ver el ítem con mayor cantidad de stock"
  puts "Ingrese 6 para ver si el ítem existe en el inventario"
  puts "Ingrese 7 para salir"

  option = gets.chomp

  puts case option
  when '1'
    add_element(inventario)
  when '2'
  	delete_element(inventario)
    
  when '3'
    update_element(inventario)

  when '4'
  	stock_summary(inventario)

  when '5'
  	max_stock(inventario)

  when '6'
  	check_if_exists(inventario)
  else
  	exit
  end
end
