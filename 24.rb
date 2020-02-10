def narayana(arr, iter)
  """
    Выполняем вычисления одного из трех шагов Алгоритма Нарайаны.
  """
  (arr.size-2).downto(0).each { |j| return j if arr[j] < arr[j+1] } if iter == 1
  (arr.size-1).downto(0).each { |l| return l if arr[l] > arr[$j] } if iter == 2
  if iter == 3
    arr[$j], arr[$l] = arr[$l], arr[$j]
    arr[$j+1..-1] = arr[$j+1..-1].reverse
    return arr
  end
end

def main(number, limit)
  """
    Используя Алгоритм Нарайаны, в каждом шаге цикла получаем следующую перестановку.
  """
  count = 1
  arr = number.to_s.chars
  while count < limit do
    $j = narayana(arr, 1)
    $l = narayana(arr, 2)
    arr = narayana(arr, 3)
    count += 1
  end
  arr.join
end

t1 = Time.new
puts main('0123456789', 1000000)
t1 = Time.new - t1
puts("Spent time: #{t1}")
