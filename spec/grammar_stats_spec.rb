require 'grammar_stats'

RSpec.describe GrammarStats do
  it 'creates a new instance of a GrammarStats class' do
    my_grammar_check = GrammarStats.new
  end

  it 'returns true of false depending on the text starting with a capital letter and punctuation mark' do
    my_grammar = GrammarStats.new
    result = my_grammar.check("This is a string of text.")
    expect(result).to eq true
  end

  it 'returns false if string has no capital letter' do
    my_grammar = GrammarStats.new
    result = my_grammar.check('this is a string of text.')
    expect(result).to eq false
  end

  it "returns false if a sentence does not have a full stop" do
    result = grammar_check("This is a string of text")
    expect(result).to eq false
  end

  it "returns false if a sentence does not have a capital or full stop" do
    result = grammar_check("this is a sentence")
    expect(result).to eq false
  end

  it "returns true if a sentence is all capitals" do
    result = grammar_check("THIS IS A SENTENCE.")
    expect(result).to eq true
  end

  it "returns true if a sentence ends with an exclamation mark" do
    result = grammar_check("This is a sentence!")
    expect(result).to eq true
  end

  it "returns true if a sentence ends with a question mark" do
    result = grammar_check("This is a sentence?")
    expect(result).to eq true
  end

end