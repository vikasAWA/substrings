def substrings(string, dictionary)
  res = dictionary.reduce(Hash.new(0)) do |result, word|
    matches = string.downcase.scan(word) 
    result[word] = matches.length unless matches.empty?
    result
    end
    res
  end
