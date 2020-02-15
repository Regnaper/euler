def size_of_sequence(number)
  """
    Поиск размера последовательности повторяющихся цифр (далее -- РП)
  """
  number = number.to_s
  while number[-1] == "0" # удаляем лишние нули в конце строки
    number.chop!
  end
  number = number.split(number[-1]).reject(&:empty?) # разбиваем строку с числом на части, разделенные между собой произвольной цифрой (последняя цифра числа)
  sequence_size = 1
  if number.size > 1 # если в числе имеются повторяющиеся цифры
    sequence_size += number[-1].size + 1 # добавляем к РП размер последней части числа + 1 (удаленная при разбиении цифра)
    (number.size-2).downto(0).each do |i| # сравниваем последнюю часть числа с остальными начиная справа
      if number[i] == number[-1] # если нашли такую же часть
        # добавляем к РП размер всех частей между данной и последней + 1 для каждой (удаленные при разбиении цифры)
        (i+1...number.size-1).each { |seq| sequence_size += (number[seq].size + 1) }
        return sequence_size
      end
    end
  end
  sequence_size
end

def main(limit)
  sizes = [0]
  (1...limit).each do |num|
    # делим 10^1000 на число для получения большего количества цифр дроби
    size = size_of_sequence(10**1000/num)
    sizes << size
  end
  return sizes.index(sizes.max)
end

t1 = Time.new
puts main(1000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
