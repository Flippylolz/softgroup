class String
  def valid?
    brackets = gsub(/[^\(\)\[\]\{\}\<\>]/, '')
    return true if brackets.empty?
    return false if brackets.size.odd?
    loop do
      s = brackets.gsub('()', '').gsub('[]', '').gsub('{}', '').gsub('<>', '')
      return true if s.empty?
      return false if s == brackets
      brackets = s
    end
  end
end


# testing
# p '[ ({[]})( ) {<>} ]'.valid? # => true
# p '[ ( text { more text { (even <)>more text) }} )]'.valid? # => false
