class PhoneBook

  def initialize
    @numbers = []
  end

  def extract_numbers(text)
    numbers  
    @numbers << text
  end

  def list
    return @numbers
  end

end