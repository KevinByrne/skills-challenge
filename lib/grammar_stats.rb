class GrammarStats

  def initialize
    @total_tests = []
  end

  def check(text)
    string_check = text[0] == text [0].upcase 
    last_character_check = [".", "!", "?"].include? text[-1]
    if string_check && last_character_check
      return true 
    else
      return false
    end
  end
end

my_test = GrammarStats.new
my_test.check('My way.')
my_test.check('my way')


