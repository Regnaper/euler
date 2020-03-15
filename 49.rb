require 'prime'

def get_arithmetic_progression(arr)
  """
    Если в массиве есть три числа, составляющие арифметическую прогрессию,
    функция возвращает средний член прогрессии и шаг прогрессии
  """
  return false if arr.size < 3
  arr.each do |n1|
    diffs = arr.map { |n2| (n1 - n2).abs }
    diffs.select! { |diff| diffs.count(diff) > 1 }
    return n1, diffs.first if diffs.first
  end
  false
end

def main()
  primes = Prime.each(10000).select { |p| p > 1000 }
  primes.delete(1487) # удаляем число, являющееся членом первого решения задачи, для получения только второго решения
  primes.each do |prime|
    perms = prime.digits.permutation.to_a.map do |perm| # создаем массив перестановок простого числа
      perm.join.to_i
    end
    perms.uniq! # удаляем дубликаты перестановок, возможные в случаях присутствия двух одинаковых цифр в числе
    perms.select! { |perm| primes.include? perm } # выбираем среди перестановок простые числа
    if (middle, diff = get_arithmetic_progression(perms))
      return (middle - diff).to_s + middle.to_s + (middle + diff).to_s
    end
  end
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
