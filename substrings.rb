def substrings(string, array_of_substrings)
  array_of_substrings.reduce(Hash.new(0)) do |result, substring|
    matches = string.downcase.scan(substring).size
    result[substring] += matches if matches > 0
    result
  end
end

dictionary =["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# p substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
