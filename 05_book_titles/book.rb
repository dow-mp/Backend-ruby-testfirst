class Book
# write your code here
    attr_accessor :title

    def title=(name)
        do_not_cap = ["a", "an", "the", "at", "by", "down", "for", "from", "in", "into", "like", "near", "of", "off", "on", "onto", "over", "past", "to", "upon", "with", "and", "as", "but", "for", "if", "nor", "once", "or", "so", "than", "that", "till", "yet"]
            arr = name.split(' ')
            index = 0
            new_arr = []
            while index < arr.length do
                word = arr[index]
                if index == 0
                    cap_word = arr[index].capitalize
                    new_arr.push(cap_word)
    
                elsif !do_not_cap.include?(arr[index])
                    cap_word = arr[index].capitalize
                    new_arr.push(cap_word)
    
                else
                    new_arr.push(arr[index])
                end
                @title = new_arr.join(" ")
                index += 1
            end
            @title
    end
end
