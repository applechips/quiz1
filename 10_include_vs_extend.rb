# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

# include will bring all the methods from the module to this class
# instance methods - methods that are defined right within the class

# INCLUDE: bring all the methods from the module as instance methods in the target class
# EXTEND: bring all the methods from the module as class methods in the target class

module Example
  def module_method
    puts "This is a module method"
  end

end

class IncludeExample
  include Example
end

class ExtendExample
  extend Example
end

puts " -- INCLUDE -- "
IncludeExample.new.module_method    # "This is a module method"
puts " -- EXTEND -- "
ExtendExample.module_method     # "This is a module method"
