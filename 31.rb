def coin_cycle(sum, limit, level)
  """
    В рекурсивной функции перебираем количество монет в цикле.
    В каждом уровне рекурсии перебираем определенный номинал.
  """
  $count += 1 if sum == 200
  return true if level > 6 || sum >= 200 # выход, если сумма собрана, превышена или перебрали все номиналы монет
  coin = $coins[level] # выбираем монету для данного уровня рекурсии
  (0..limit/coin).each do |x|
    sum_x = sum + x * coin # вычисляем сумму, полученную из монет этого и прошлых уровней
    limit_x = limit - x * coin # ставим ограничение перебора для монет, большего номинала
    coin_cycle(sum_x, limit_x, level + 1) # вызываем функцию для следующего номинала
  end
end

def main()
  $coins = [1, 2, 5, 10, 20, 50, 100]
  $count = 1
  coin_cycle(0, 200, 0)
  $count
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
