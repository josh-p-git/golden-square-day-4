require 'grammar_stats'

describe "GrammarStats class" do
  it "returns a true when 'Hello.' is given" do
    grammar_stats = GrammarStats.new()
    expect(grammar_stats.check("Hello.")).to eq true
  end
  
end