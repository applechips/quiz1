# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.


module HelperMethods
  def self.titleize(sentence)
    array = sentence.split
    answer = array.map do |word|
      if (word == "in" || word == "the" || word == "of" || word == "and" || word == "or" || word == "from")
        word.concat(" ")
      else
        word.capitalize.concat(" ")
      end
    end
    return answer.join
  end
end


p HelperMethods.titleize("the black dog in the forest from nowhere")
