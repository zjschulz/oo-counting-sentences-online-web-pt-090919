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
  hash == self.split(Regexp.union(delimiters)).select! { |element| element&.size.to_i > 0 }
  hash.count
  end
  
end