require 'time_to_read'

RSpec.describe "estimates reading time based on word per minute" do
  
  it "returns an esitmated reading  time of one minute based on 200 words per minute"do
    result = reading_time(200)
    expect(result).to eq 1
  end
end