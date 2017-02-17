class String
  def valid?
    string = self.gsub(/[^\(\)\[\]\{\}\<\>]/, '')
    return true if string.empty?
    return false if string.size.odd?
    loop do
      s = string.gsub('()', '').gsub('[]', '').gsub('{}', '').gsub('<>', '')
      return true if s.empty?
      return false if s == string
      string = s
    end
  end
end


# testing
# p '[ ({[]})( ) {<>} ]'.valid? # => true
# p '[ ( text { more text { (even <)>more text) }} )]'.valid? # => false
