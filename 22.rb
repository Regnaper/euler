def read_file(file_name)
  names_file = open file_name
  names = names_file.read.split(",")
  names_file.close
  names.map! { |name| name[1..-2] } # убираем кавычки в начале и конце строки
end

def sum_of_abc(string)
  sum = 0
  string.each_byte { |char| sum += (char - 64) } # chr('A') == 65
  sum
end

def main()
  names = read_file 'names.txt'
  names.sort!
  sum = 0
  names.unshift("") # смещение массива на 1 элемент вправо
  names.each_with_index { |name, index| sum += sum_of_abc(name)*(index) }
  sum
end

t1 = Time.new
puts main()
t1 = Time.new - t1
puts("Spent time: #{t1}")
