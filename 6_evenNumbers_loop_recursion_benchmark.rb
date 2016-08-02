
# 6. Implement question #5 again in Ruby in two ways:
#     a. Using a loop
#     b. Using recursion
#    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?
# 5. Write a function in Ruby that takes in a number n and returns the first n even numbers

require 'Benchmark'

#### LOOP
def even_loop(n)
  # puts "Printing the first #{n} even numers"
  (0..n).each do |x|
    if x % 2 == 0
      # p x
    end
  end

end

# even_loop(10)



##### RECURSION
def even_recursion(n)
  if n == 0
    1
  elsif (n % 2 == 0)
    even_recursion(n-2)
  else (n % 2 != 0)
    even_recursion(n-1)
  end
  # p n
end

# even_recursion(10)


#### BENCHMARKING
Benchmark.bm do |x|
  x.report do
    100000.times { even_loop(50) }
  end
  x.report do
    100000.times { even_recursion(50) }
  end
end



  #      user     system      total        real
  #  0.400000   0.000000   0.400000 (  0.401988)    # LOOP
  #  0.200000   0.000000   0.200000 (  0.196159)    # RECURSION

  # Recursion is faster
