def ceasar_cypher(input, shift)
  #TODO: This should be a class
  letters_array = ('a'..'z').to_a
  letters_hash = Hash.new(0)
  letters_array.each_with_index do |letter, index|
    letters_hash[letter] = index
  end

  shifted = input.split("") do |letter|
    if letters_hash.include?(letter)
      letters_array[(letters_hash[letter] + shift) % 26 ]
    elsif letters_hash.include?(letter.downcase)
      letters_array[(letters_hash[letter.downcase] + shift) % 26].upcase
    else
      letter
    end
  end

  shifted.join
end

puts ceasar_cypher("What a string!", 5)
puts ceasar_cypher("ABCDEFGHIJKLMNOPQURSUVWXYXabcdefghijklmnopqrstuvwxyz!", 5)
