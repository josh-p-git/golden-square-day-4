require 'grammar_stats'

describe "GrammarStats class" do
  it "returns a true when 'Hello.' is given" do
    grammar_stats = GrammarStats.new()
    expect(grammar_stats.check("Hello.")).to eq 1
  end
  it "returns false when 'Hello' is given" do
    grammar_stats = GrammarStats.new()
    expect(grammar_stats.check("Hello")).to eq 1
  end
  it "returns false when 'hello.' is given" do
    grammar_stats = GrammarStats.new()
    expect(grammar_stats.check("hello.")).to eq 1
  end
  it "returns 66% when two true and one false word entries are given" do
    grammar_stats = GrammarStats.new()
    grammar_stats.check("Hello.")
    grammar_stats.check("false")
    grammar_stats.check("Right.")
    expect(grammar_stats.percentage_good).to eq 66
end
end