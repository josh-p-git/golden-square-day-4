class GrammarStats
  def initialize
    # ...
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

    # puts text[-1](/[[:punct:]]/)
    text[0] == text[0].upcase && /[[:punct:]]/.match?(text[-1])

  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return 4
  end
end

grammar_stats = GrammarStats.new()

p grammar_stats.check("Hello!")