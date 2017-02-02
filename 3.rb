class String
  def string_split_to_array
    splitter = self.scan(/\W+/).first
    parts    = self.split(splitter)
    result   = []

    parts.count.times do
      result << parts.join(splitter)
      parts.pop
    end

    result
  end
end
# testing
# p "Fizz::Buzz::Wizz".string_split_to_array
