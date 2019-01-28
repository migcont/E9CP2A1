class Table
  def initialize(name, day1, day2, day3, day4)
    @name = name
    @income = [ day1, day2, day3, day4 ]
  end
end

data = File.open('casino.txt','r'){|file| file.readlines}
mes = []
data.each do |table_string|
  table_array = table_string.split(', '). map(&:chomp)#table array
  mesa << Table.new(table_array[0], table_array[1], table_array[2], table_array[3], table_array[4])
end
