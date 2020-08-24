def substrings(words, dictionary_array)
    found_hash = {}
    words = words.split

    words.each do |word|
        word.downcase!
        dictionary_array.each do |dictionary_word|
            if(word.include?(dictionary_word))
                found_hash.has_key?(dictionary_word) ? found_hash[dictionary_word] += 1 : found_hash[dictionary_word] = 1
            end
        end
    end

    puts found_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("below down", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)