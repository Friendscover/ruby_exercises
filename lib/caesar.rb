def caesar_cipher(text, shiftvalue)
    #defining ranges
    alpha = ("a".."z").to_a
    beta = ("A".."Z").to_a
    return_array = []

    text.each_char do |char|
        if alpha.include?(char)
            index = get_index(alpha, char, shiftvalue)
            return_array << alpha[index]
        elsif beta.include?(char)
            index = get_index(beta, char, shiftvalue)
            return_array << beta[index]
        else
            return_array << char
        end
    end

    return_array.join
end

def get_index(range, char, shiftvalue)
    index = range.index(char) + shiftvalue
    if(index > 25)
        index = index - 26
    else
        index
    end
end
 
p caesar_cipher("Hello World!", 4)
puts " "
p caesar_cipher("ABCabc", 27)
puts " "
p caesar_cipher("What a string!", 5)