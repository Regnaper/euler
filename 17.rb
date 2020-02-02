def num_to_words(number)
  sum_of_letters = 0
  str_number = number.to_s.reverse.split(//)
  str_number.each_with_index do |num, index|
    sum_of_letters += $letters_in_num[num] if index == 0
    sum_of_letters += $letters_in_num[((num.to_i)*10).to_s] if index == 1
    sum_of_letters += $letters_in_num[num] + 7 if (index == 2 && num != "0")
    sum_of_letters += $letters_in_num[num] + 8 if index == 3
  end
  [14, 16, 17, 19].each do |num|
    if number % 100 == num
      sum_of_letters += 1
      break
    end
  end
  sum_of_letters
end

def main(limit)
  $letters_in_num = {"0" => 0, "1" => 3, "2" => 3, "3" => 5, "4" => 4, "5" => 4, "6" => 3, "7" => 5,"8" => 5, "9" => 4, "10" => 3, "11" => 6, "12" => 6, "13" => 8, "15" => 7, "18" => 8, "20" => 6, "30" => 6, "40" => 6, "50" => 5, "60" => 5, "70" => 7, "80" => 6, "90" => 6,"1000" => 8}
  (1..limit).inject(0) { |sum, n| sum + num_to_words(n) }
end

t1 = Time.new
puts main 1000
t1 = Time.new - t1
puts("Spent time: #{t1}")
