require 'count_words'

RSpec.describe "take a string as an argument and returns number of words in that string" do
  
  it "accepts an empty string as an argument"do
    result = count_words('')
    expect(result).to eq 0
  end

  it "returns an integer of the number of words in the string" do
    result = count_words('this is four words')
    expect(result).to eq 4
  end
end