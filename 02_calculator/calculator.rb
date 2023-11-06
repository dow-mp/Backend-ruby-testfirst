#write your code here
def add(a,b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    if array.length == 0
        result = 0
    else
        # result = array.inject { | sum, element| sum += element }
        sum = 0
        array.each { |element| sum += element }
        result = sum
    end
    result
end

def multiply(a, b)
    a * b
end

def power(a, b)
    a^b
end