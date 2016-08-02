# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.

module Blog
  class Article
    attr_accessor :title, :body
    def initialize (title, body)
      @title = title
      @body = body
    end

    def title
        array = @title.split
        answer = array.map do |word|
          if (word == "in" || word == "the" || word == "of" || word == "and" || word == "or" || word == "from")
            word.concat(" ")
          else
            word.capitalize.concat(" ")
          end
        end
        return answer.join
    end

    def body
      @body
    end


  end

  class Snippet < Article
    def body
      super
      if @body.length > 100
        @body[0...100] + "..."
      else
        @body[0...100]
      end
    end
  end

end


my_article = Blog::Article.new("about the poodle", "The poodle is a group of formal dog breeds, the Standard Poodle, Miniature Poodle and Toy Poodle. The Fédération Cynologique Internationale (FCI) recognizes four sizes of one breed: standard, medium, miniature, and toy. Poodles exist in many coat colors. Originally bred in Germany as a type of water dog, the breed was standardized in France. The poodle is skillful in many dog sports, including agility, obedience, tracking, and even herding. Poodles have taken top honors in many conformation shows, including \"Best in Show\" at the Westminster Kennel Club Dog Show in 1991 and 2002, and at the World Dog Show in 2007 and 2010.")
puts my_article.title
puts my_article.body

my_snippet = Blog::Snippet.new("about the poodle", "The poodle is a group of formal dog breeds, the Standard Poodle, Miniature Poodle and Toy Poodle. The Fédération Cynologique Internationale (FCI) recognizes four sizes of one breed: standard, medium, miniature, and toy. Poodles exist in many coat colors. Originally bred in Germany as a type of water dog, the breed was standardized in France. The poodle is skillful in many dog sports, including agility, obedience, tracking, and even herding. Poodles have taken top honors in many conformation shows, including \"Best in Show\" at the Westminster Kennel Club Dog Show in 1991 and 2002, and at the World Dog Show in 2007 and 2010.")
puts my_snippet.title
puts my_snippet.body
