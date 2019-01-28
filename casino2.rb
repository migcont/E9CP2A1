Vanessa Frenkel [20:32]
# La mesa tiene que decir cual es y cual fue su mayor income y en que día.
# Instancia = Lego

class Table
 #def initialize(name,day1, day2, day3, day4)
 def initialize(name,*income)
   @name = name
   @income = income
   #@income = [ day1, day2, day3, day4 ]

 end

end

data = File.open(‘casino.txt’,‘r’){|file| file.readlines }
#print data
table_objects = []
data.each do |table_string|
   table_array = table_string.split(‘, ’).map(&:chomp)
   # .map(&:chomp) = shortcode de table_string.map {|elemen| element.chomp}, los & son procedimientos.
   #table_array = table_string.split(‘,’).map(&:strip)
   #strip quita el espacio.
   table_objects << Table.new(*table_array)
   # table_obj << Table.new(table_array[0],table_array[1], table_array[2], table_array[3], table_array[4])
   #El metodo .new llama el initialize
end

table_objects.each do |max|
  mesa.best.day
end
# concepto tdd = desarrollo guiado por pruebas ( usar el código que desareamos tener )
