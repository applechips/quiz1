# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

# Stack is a Last-In First-Out (LIFO) data structure.
  # e.g. the last dish you put into the dishwasher is the first dish you take out
# Queue is a First-In First-Out (FIFO) data structure
  # e.g. in a supermarket line, the first person served is the first person out.


class Stack
  def initialize(element)
    @element = element
  end
  def add(element)
    @element.push(element)
  end

  def remove
    @element.pop
  end
end

class Queue
  def initialize(element)
    @element = element
  end

  def add(element)
    @element.unshift(element)
  end

  def remove
    @element.pop
  end

end

array = [0, 1, 2, 3]
# STACK EXAMPLE - LAST IN, FIRST OUT
# puts "------ STACK ------ \n"
# puts "Elements in the Array BEFORE: #{array} \n"
# my_stack = Stack.new(array)
# puts "We now ADD a new element to the array by pushing 4 into the END array \n * LAST IN *"
# p my_stack.add(4)
# puts ">>>>>>>>>>>> \n"
# puts "We REMOVE the last thing added: element(4) from the array \n * FIRST OUT *"
# p my_stack.remove
# puts ">>>>>>>>>>>> \n"
# puts "Elements in Array AFTER: #{array} \n"


# QUEUE EXAMPLE - FIRST IN, FIRST OUT
puts "------ QUEUE ------ \n"
puts "Elements in the Array BEFORE: #{array} \n"
my_queue = Queue.new(Array)
puts "We now ADD a new element to the array by pushing 4 into the FRONT array \n * FIRST IN *"
p my_queue.add(4)
puts ">>>>>>>>>>>> \n"
puts "We REMOVE the last thing added: element(4) from the array \n * FIRST OUT *"
p my_queue.remove
puts ">>>>>>>>>>>> \n"
puts "Elements in Array AFTER: #{array} \n"
