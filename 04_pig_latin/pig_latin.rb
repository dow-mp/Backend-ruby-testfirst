#write your code here

def translate input
    vowels = ["a", "e", "i", "o", "u"]

    # determine if input is multi-words or single word

    # split multi-word input into array
    if input.include?(" ")
        arr = input.split(" ")
        index = 0
        pig_arr = []

        # loop through array to convert each word into pig latin
        while index < arr.length
            # handle words starting with vowels
            if vowels.include?(arr[index][0])
                pig_arr.push(arr[index].concat("ay"))
            
            # handle words starting with "q"
            elsif arr[index][0].downcase == "q"
                pig_arr.push(
                    arr[index].slice(2, arr[index].length-1)
                    .concat(arr[index][0])
                    .concat(arr[index][1])
                    .concat("ay")
                )

            # handle words starting with triad of consonants
            elsif !vowels.include?(arr[index][0]) and !vowels.include?(arr[index][1]) and !vowels.include?(arr[index][2])
                pig_arr.push(
                    arr[index].slice(3, arr[index].length-1)
                    .concat(arr[index][0])
                    .concat(arr[index][1])
                    .concat(arr[index][2])
                    .concat("ay")
                )

            # handle words starting with one consonant immediately followed by Q
            elsif !vowels.include?(arr[index][0]) and arr[index][1].downcase == "q"
                pig_arr.push(arr[index].slice(3,input.length-1)
                    .concat(arr[index][0])
                    .concat(arr[index][1])
                    .concat(arr[index][2])
                    .concat("ay")
                )

            # handle words starting with two consonants
            elsif !vowels.include?(arr[index][0]) and !vowels.include?(arr[index][1])
                pig_arr.push(
                    arr[index].slice(2, arr[index].length-1)
                    .concat(arr[index][0])
                    .concat(arr[index][1])
                    .concat("ay")
                )

            # handle words starting with a single consonant    
            else
                pig_arr.push(
                    arr[index].slice(1, arr[index].length-1)
                    .concat(arr[index][0])
                    .concat("ay")
                )
            end
            # ensure the loop is not infinite by counting up to the length of the array
            index += 1
        end
        # translate the array back into a sentence string
        pig_arr.join(" ")
    else
    # handle all single word inputs (similarly to the way each word is handled above - differing rules for vowel starts, q starts, single consonant starts, multi-consonant starts, and consonant + "qu" starts)
        if vowels.include?(input[0])
            input.concat("ay")
        elsif input[0].downcase == "q"
            pig_str = input.slice(2,input.length-1)
                .concat(input[0])
                .concat(input[1])
                .concat("ay")
        elsif !vowels.include?(input[0]) and !vowels.include?(input[1]) and !vowels.include?(input[2])
            pig_str = input.slice(3,input.length-1)
                .concat(input[0])
                .concat(input[1])
                .concat(input[2])
                .concat("ay")
        elsif !vowels.include?(input[0]) and input[1].downcase == "q"
            pig_str = input.slice(3,input.length-1)
                .concat(input[0])
                .concat(input[1])
                .concat(input[2])
                .concat("ay")
        elsif !vowels.include?(input[0]) and !vowels.include?(input[1])
            pig_str = input.slice(2,input.length-1)
                .concat(input[0])
                .concat(input[1])
                .concat("ay")
        else
            pig_str = input.slice(1,input.length-1)
                    .concat(input[0])
                    .concat("ay")
        end
    end
end