#write your code here
def add num1, num2
    num1 + num2
end

def subtract num1, num2
    num1 - num2
end

def sum arr
    # sum = arr.sum
    count = 0
    sum = 0
    while count < arr.length do 
        sum += arr[count]
        count += 1
    end
    return sum
end

def multiply num1, num2
    num1 * num2
end

def power num1, num2
    num1 ** num2
end

def factorial num
    factorial = num
    if num == 0 
        factorial = 0
    elsif num == 1
        factorial = 1
    else
        count = num
        while count > 1 do
            factorial = factorial * (num -= 1)
            count -= 1
        end
    end
    factorial
end

factorial(1)
factorial(7)
factorial(5)
factorial(0)