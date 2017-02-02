def index_finder(array, number)
  "Your number = #{number}, index in the array = #{array.index(number.to_i)}"
end

p 'Enter a number from the following array, so we can figure it`s index'
p array = [1, 5, 4, 7, 8, 10, 20]
p index_finder(array.sort!, gets.chomp.to_i)
