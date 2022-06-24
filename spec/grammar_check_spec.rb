require 'grammar_check'

RSpec.describe "Checks the grammar in a text and returns true or false if text is made up of capitalized sentences and appropriate end punctuation marks." do

  it "returns true if a sentence starts with a capital letter and ends with a period (.)" do
    result = grammar_check("This is a sentence.")
    expect(result).to eq true
  end

  it "returns false if a sentence starts without a capital letter" do
    result = grammar_check("this is a sentence.")
    expect(result).to eq false
  end

  it "returns false if a sentence does not have a full stop" do
    result = grammar_check("This is a sentence")
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