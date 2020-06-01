require 'prime'

def primes_in_pair(number, positions)
  """ Поиск количества возможных простых чисел,
      полученных при замене одинаковых цифр числа  """
  count = 0
  (0..9).each do |i| # перебираем все цифры
    next if positions[0] == 0 && i == 0 # пропускаем "0" если среди одинаковых цифр есть первая
    positions.each { |pos| number[pos] = i.to_s } #  заполняем повторные позиции одинаковыми цифрами
    count += 1 if number.to_i.prime?
    # возращаем false если восемь простых чисел уже набрать невохможно
    return false if count + 1 < i
  end
  return count
end

def duplicates_numbers(number)
  """ Поиск одинаковых цифр в числе """
  (0..9).each do |i| # перебираем все цифры
    count, duplicates = 0, []
    str = number.to_s[0..-2]
    (0...str.length).each do |index| # перебираем строку
      if str[index] == i.to_s # если нашли цифру увеличиваем счетчик
        count += 1
        duplicates << index # и заносим в массив позицию
      end
    end
    # если нашли цифру, повторяющуюся несколько раз, возвращаем позиции повторов
    return duplicates if count > 1
  end
  return false
end

def main(limit)
  primes = Prime.each(limit).select { |p| p > 100 }
  primes.each do |prime|
    if duplicates = duplicates_numbers(prime)
      return prime if primes_in_pair(prime.to_s, duplicates) == 8
    end
  end
  return false
end

time = Time.new
puts main 1000000
print("Spent time: #{Time.new - time}")
