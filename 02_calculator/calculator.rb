def add(a, b)
  a+b
end

def subtract(a, b)
  a-b
end

def sum(array)
  sum = 0
  array.each do |a|
    sum += a
  end
  sum
end

def factorial(number)
  if number == 0
    factorial = number
  else
    count = 0
    factorial = 1

    number.times do
      count += 1
      factorial *= count
    end
  end
  factorial
end

def multiply(array)
  product = 1
  array.each do |a|
    product *= a
  end
  product
end

def power(num, power)
  result = 1
  power.times do
    result *= num
  end
  result
end
