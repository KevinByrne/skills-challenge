require 'time_to_read'

RSpec.describe "estimates reading time based on word per minute" do
  
  it "returns an esitmated reading time of one minute based on 200 words per minute"do
    result = reading_time(200)
    expect(result).to eq "This will take approx. 1 minute(s) to read."
  end

  it "returns an estimated reading time of two minutes based on 200 words per minute" do
    result = reading_time(400)
    expect(result).to eq "This will take approx. 2 minute(s) to read."
  end

  it "returns an estimated reading time of three minutes based on 200 words per minute" do
    result = reading_time(600)
    expect(result).to eq "This will take approx. 3 minute(s) to read."
  end

  it "returns an estimated reading time of less than a minute based on 200 words per minute" do
    result = reading_time(150)
    expect(result).to eq "This will take less than 1 minute to read"
  end
end