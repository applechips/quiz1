# 11. BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.


module HelperMethods
  def titleize(sentence)
    ignore = ["in", "the", "of", "and", "or", "from"]
    capitalized = sentence.split(" ").each do |word|
      ignore.include?(word) ? word : word.capitalize!
    end
      return capitalized.join(' ')
  end

end

p HelperMethods.titleize("the black dog in the forest from nowhere")
# ? how to call 
