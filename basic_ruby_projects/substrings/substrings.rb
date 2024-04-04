def substrings(input, subs)
  sub_data = subs.map do |sub|
    [sub, substrings_for_word(input, sub)]
  end

  sub_data.to_h.select { |sub, freq| freq > 0  }
end

def substrings_for_word(input, word)
  input.scan(/(?=#{word})/).count
end

input = ""
while input != "exit" do
  puts "Input? or 'exit': "
  input = gets.chomp
  output = substrings(input, ["taco", "burger", "a","salad"])
  output.each do |key, value|
    puts key + ' : ' + value.to_s
  end
end
