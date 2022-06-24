require 'grammar_check'

RSpec.describe "Checks the grammar in a text and returns true or false if text is made up of capitalized sentences and appropriate end punctuation marks." do

  it 'accepts a body of text as an argument' do
    result = grammar_check("this is a sentence")
    expect(result).to eq 'this is a sentence'
  end
  
end