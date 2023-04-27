#write your code here
def echo phrase
    p phrase
end

def shout phrase
    p phrase.upcase
end

def repeat phrase, num = 2
    p ((phrase + " ") * num).strip
end

def start_of_word word, num
    word.slice(0, num)
end

def first_word str
    arr = str.split(' ')
    arr[0]
end

def titleize phrase
    do_not_cap = ["a", "an", "the", "at", "by", "down", "for", "from", "in", "into", "like", "near", "of", "off", "on", "onto", "over", "past", "to", "upon", "with", "and", "as", "but", "for", "if", "nor", "once", "or", "so", "than", "that", "till", "when", "yet"]
    if phrase.include?(' ')
        arr = phrase.split(' ')
        index = 0
        new_arr = []
        while index < arr.length do
            # word = arr[index]
            if index == 0
                cap_word = arr[index].capitalize
                new_arr.push(cap_word)
                index += 1

            elsif !do_not_cap.include?(arr[index])
                cap_word = arr[index].capitalize
                new_arr.push(cap_word)
                index += 1

            else
                new_arr.push(arr[index])
                index += 1
            end
            altered = new_arr.join(" ")
        end
        altered
    else 
        phrase.capitalize
    end
end