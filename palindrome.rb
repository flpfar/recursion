def palindrome?(str)
  return true if str.length == 1 || str.length.zero?

  return false unless str[0] == str[-1]

  palindrome?(str[1..-2])
end

puts palindrome?('abcdeabedcba')