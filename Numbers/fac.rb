def fac_loop(n)
  fac = 1
  loop do
    break if n == 1
    fac = fac * n
    n -= 1
  end
  fac
end

def fac_recursive(n, fac_total)
  if n == 0
    fac_total
  else
    n -= 1
    fac_total *= n + 1
    fac_recursive(n, fac_total)
  end
end

puts fac_recursive(5, 1)