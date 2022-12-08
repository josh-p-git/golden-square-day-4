class GrammarStats
  def initialize
    # ...
    @text_true = 0
    @total = 0.to_f
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    # puts text[-1](/[[:punct:]]/)
    check = text[0] == text[0].upcase && /[[:punct:]]/.match?(text[-1])
      if check == true
        @text_true += 1
      end
    @total += 1
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return (@text_true / @total * 100).to_i
  end
end