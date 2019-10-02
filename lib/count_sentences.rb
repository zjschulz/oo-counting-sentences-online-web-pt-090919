require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
  delimiters = [".","!","?"]
  self.split(Regexp.union(delimiters)).delete_if {|element| element == " " || element == "" || element.nil?}.count
  end
  
end