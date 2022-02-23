class String

  def sentence?
   self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    count = 0
    self.split(' ').each do |word| 
      if word.sentence?
        count+=1
      elsif word.question?
        count+=1
      elsif word.exclamation?
        count+=1
      end
    end
    count
  end
end