# limit - the amount of fibonacci numbers to be returned
def fibonacci(limit)
    a = [0, 1]
    until a.length == limit
	    n = a[a.length-1] + a[a.length-2]
	    a.insert(a.length, n)
	end
	return a.to_s
end

puts fibonacci(10)