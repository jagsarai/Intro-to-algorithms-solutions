# recurssive approach
def fib_recur(n)
    return 0 if n == 0 
    return 1 if n == 1
    return fib(n-1) + fib(n-2)
end


puts fib_recur(0)
puts fib_recur(1)
puts fib_recur(2)
puts fib_recur(3)
puts fib_recur(4)
puts fib_recur(5)
puts fib_recur(6)
puts fib_recur(7)
puts fib_recur(8)
puts fib_recur(9)
