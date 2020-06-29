@roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def int_to_roman(num, result = '')
  return result if num.zero?

  @roman_mapping.keys.each do |divisor|
    quotient, modulus = num.divmod(divisor)
    result << @roman_mapping[divisor] * quotient
    return int_to_roman(modulus, result) if quotient.positive?
  end
end

puts int_to_roman(449)
