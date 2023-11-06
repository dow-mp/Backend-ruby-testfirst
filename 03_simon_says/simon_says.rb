#write your code here
def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, num = 2)
    result = ""
    num.times do
        result += "#{string} "
    end
    result.strip
end

def start_of_word(string, num = 1)
    string.slice(0, num)
end

def first_word(string)
    array = string.split (" ")
    array[0]
end

def titleize(string)
    little_words = ["a", "an", "and", "as", "at", "but", "by", "down", "for", "for", "from", "if", "in", "into", "like", "near", "nor", "of", "off", "on", "once", "onto", "or", "over", "past", "so", "than", "that", "the", "till", "to", "upon", "when", "with", "yet"]
    array = string.split(" ")
    capitalized_array = []
    i = 0
    while i < array.length
        if i == 0
            capitalized_array.push(array[i].capitalize)
        else
            if little_words.include?(array[i])
                capitalized_array.push(array[i])
            else
                capitalized_array.push(array[i].capitalize)
            end
        end
    i += 1
    end
    capitalized_array.join(" ")
end