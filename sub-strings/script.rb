
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substring(words, dictionary)

    lower_words = words.downcase
    result = Hash.new(0)

    dictionary.each_with_index do |word, index|
        if lower_words.include?(dictionary[index])
            match_count = lower_words.scan(word).length
            result[word] = match_count
            lower_words.slice(word)
        end
    end

    result

end

puts substring("Howdy partner, sit down! How's it going?", dictionary)
