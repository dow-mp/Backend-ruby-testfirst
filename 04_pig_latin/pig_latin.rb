#write your code here

def translate(input)
    vowels = ["a", "e", "i", "o", "u"]
    if !input.include?(" ")
        pig_latin = ""
        if vowels.include?(input[0])
            pig_latin = input.concat("ay")

        # handle secondary q + vowel as single phoneme
        elsif !vowels.include?(input[0]) && input[1] == 'q'
            cut = input.length - 3
            consonant = input.slice(3, cut)
            pig_latin.concat(consonant + input[0] + input[1] + input[2] + "ay")

        # handle starting q + vowel as single phoneme
        elsif input[0].downcase === 'q'
            cut = input.length - 2
            consonant = input.slice(2, cut)
            pig_latin.concat(consonant + input[0] + input[1] + "ay")

        elsif !vowels.include?(input[0]) && !vowels.include?(input[1]) && !vowels.include?(input[2])
            cut = input.length - 3
            consonant = input.slice(3, cut)
            pig_latin.concat(consonant + input[0] + input[1] + input[2] + "ay")

        elsif !vowels.include?(input[0]) && !vowels.include?(input[1])
            cut = input.length - 2
            consonant = input.slice(2, cut)
            pig_latin.concat(consonant + input[0] + input[1] + "ay")
        else
            cut = input.length - 1
            consonant = input.slice(1, cut)
            pig_latin.concat(consonant + input[0] + "ay")
        end
        pig_latin
    elsif input.include?(" ")
        array = input.split(" ")
        pig_latin = []
        i = 0
        while i < array.length do
            word = array[i].downcase
            
            # handle words starting with vowel
            if vowels.include?(word[0])
                pig_latin.push(word.concat("ay"))

            # handle three consonant words
            elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
                cut = word.length - 3
                consonant = word.slice(3, cut)
                pig_latin.push(consonant + word[0] + word[1] + word[2] + "ay")

            # handle secondary q + vowel as single phoneme
            elsif !vowels.include?(word[0]) && word[1] == 'q'
                cut = word[i].length - 3
                consonant = word[i].slice(3, cut)
                pig_latin.concat(consonant + word[0] + word[1] + word[2] + "ay")

            # handle q + vowel as single phoneme
            elsif word[0].downcase === 'q'
                cut = word.length - 2
                consonant = word.slice(2, cut)
                pig_latin.push(consonant + word[0] + word[1] + "ay")

            #  handle two consonant words
            elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
                cut = word.length - 2
                consonant = word.slice(2, cut)
                pig_latin.push(consonant + word[0] + word[1] + "ay")

            else
                cut = word.length - 1
                consonant = word.slice(1, cut)
                pig_latin.push(consonant + word[0] + "ay")
            end
            i += 1
        end
        puts pig_latin.inspect
        pig_latin.join(" ")
    end
end

translate("Three shreaking sprites")