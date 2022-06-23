require 'make_snippet'

RSpec.describe "truncates over 5 words" do
  
  it "truncates a string over 5 words" do
    result = make_snippet("this is a longer string to read")
    expect(result).to eq ("this is a longer string...")
    
  
  end

end