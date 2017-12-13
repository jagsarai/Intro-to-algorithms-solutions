def fib(n)
    return 0 if n == 0
    fib_0 = 0
    fib_1 = 1
    (0...n-1).each do
        temp = fib_0
        fib_0 = fib_1
        fib_1 = temp + fib_1
    end
    fib_1
end

#alternative approach
def fib_alternative(n)
    total = [0,1]
    i = 2
    while i <= n do
        total.push(total[i-2] +  total[i-1])
        i += 1
    end 
    return total[n]
end

puts 'fib'
puts fib(0)
puts fib(1)
puts fib(2)
puts fib(3)
puts fib(4)
puts fib(5)
puts fib(6)
puts fib(7)
puts fib(8)
puts fib(9)

puts 'fib alternative'
puts fib_alternative(0)
puts fib_alternative(1)
puts fib_alternative(2)
puts fib_alternative(3)
puts fib_alternative(4)
puts fib_alternative(5)
puts fib_alternative(6)
puts fib_alternative(7)
puts fib_alternative(8)
puts fib_alternative(9)