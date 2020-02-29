def read_file(file_name)
  words_file = open file_name
  words = words_file.read.split(",")
  words_file.close
  words.map! { |word| word[1..-2] } # убираем кавычки в начале и конце слова
end

def main()
  triangles = (1..30).map { |n| n * (n+1) / 2 }
  words = read_file 'words.txt'
  words.count do |word|
    word_num = word.downcase.split(//).reduce(0) { |sum, chr| sum + chr.ord - 96 }
    triangles.include?(word_num)
  end
end

t1 = Time.new
puts main
t1 = Time.new - t1
puts("Spent time: #{t1}")
