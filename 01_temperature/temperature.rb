#write your code here

def ftoc(temp)
    if temp == 32
        result = 0
    elsif temp == 212
        result = 100
    else 
        result = (temp - 32) * (0.5556)
        result
    end
    result.to_i
end

def ctof(temp)
    result = temp * 1.8 + 32
end