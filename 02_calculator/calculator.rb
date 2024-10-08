#write your code here
def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(num)
    total = 0
    
    num.each do |n|
        total += n
    end
    total
end

#Extra Credit
def multiply(*numbers)
    result = 1
    numbers.each { 
        |n| result = result * n }
    result
  end
  
def power(base, exponent)
    base ** exponent
end

def factorial(num)
    if num == 0
        0
    elsif num == 1
        1
    else
        num * factorial(num - 1)
    end
end