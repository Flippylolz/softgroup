def minimum_number_of_elements(array, value, i = 1)
  array.sort!
  i += 1 while (value -= array.pop.to_i).positive?
  i
end


array = Array.new(20) { rand(1..30) }
p minimum_number_of_elements(array, gets.chomp.to_i)
