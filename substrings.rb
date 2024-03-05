
def substrings(words, dictionary)
  hash_substrings = {}
  words = words.downcase.split(' ')
  dictionary.each { |key|
    times_found = words.reduce(0) { |sum, word| sum + (word.include?(key) ? 1 : 0) }
    hash_substrings[key] = times_found if times_found > 0
  }
  hash_substrings
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
