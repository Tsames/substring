dictionary = %w(below down go going horn how howdy it i low own part partner sit)

def substring(sentence, dictionary)
  results = Hash.new(0)
  dictionary.each do |substring|
    sentence.split.each do |word|
      if word.downcase.include?(substring)
        results[substring] += 1
      end
    end
  end
  return results
end

puts(substring("Howdy partner! Lets be on our way down town.", dictionary))
puts(substring("I'm going to take a seat down by Jimmy", dictionary))