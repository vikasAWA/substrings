def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word_of_dictionary|
    string.split.each do |word_of_string|
      if word_of_string.downcase.include?(word_of_dictionary.downcase)
        hash[word_of_dictionary] += 1
      end 
    end 
    hash
  end 
end 


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)