# write your code here
class Book
    attr_accessor :title

    def title=(name)
        little_words = ["a", "an", "and", "as", "at", "but", "by", "down", "for", "for", "from", "if", "in", "into", "like", "near", "nor", "of", "off", "on", "once", "onto", "or", "over", "past", "so", "than", "that", "the", "till", "to", "upon", "with", "yet"]
            array = name.split(" ")
            capitalized_array = []
            i = 0
            while i < array.length do
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
            @title = capitalized_array.join(" ")
        end
end