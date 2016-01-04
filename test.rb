def word_count(string)
  words = string.downcase.split
  counts = Hash.new(0)
  words.each { |word| counts[word] += 1 }
  counts
end

puts word_count("hi hi hi hello titty")