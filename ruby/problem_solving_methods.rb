def search_arr(var1, var2)
  index = 0
  none = nil
  var1.each do |list|
    if list == var2
      none = index
    else
      index += 1
    end
  end
  none
end

array = [23, 42, 6, 98, 100]
p search_arr(array, 42)
p search_arr(array, 5)

array = [23, 42, 6, 98, 100]
p search_arr(array, 42)
p search_arr(array, 5)
 n = 6
def fibonacci(n)
  if n ==1
    1
  elsif n==2
    1
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end
x = n - 3
array = [fibonacci(x), fibonacci(n-2), fibonacci(n-1)]
array.each do |num| p num
end

# My partner and I decided that we would submit what we had instead of agonizing ourselves in more hours of pain in trying to solve how to list all the numbers in the Fibonacci sequence. We find that it's better to submit the work we had instead of submitting nothing at all.