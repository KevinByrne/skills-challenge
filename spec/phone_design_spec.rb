require 'phone_design.rb'

RSpec.describe PhoneBook do
  xit 'has an empty list' do
    phone_book = PhoneBook.new
    expect(phone_book.list).to eq []
  end

  it 'stores the number' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers('07930528489')
    expect(phone_book.list).to eq ['07930528489']
  end

  it 'stores the number within a string' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers("This is my new number 07930528590 thanks")
    expect(phone_book.list).to eq ['07930528590']
  end

  it 'adds an entry with two numbers' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers("07931528489", "07932528489")
    expect(phone_book.list).to eq ["07931528489", "07932528489"]
  end

  it 'stores nothing' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers("this has no number")
    expect(phone_book.list).to eq []
  end

  it 'stores multiple entries' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers("07931528499")
    phone_book.extract_numbers("07931528500")
    expect(phone_book.list).to eq ["07931528499", "07932528500"]
  end

  it 'does not store the number if too few digits' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers('079305284')
    expect(phone_book.list).to eq []
  end

  it 'does not store duplicates' do
    phone_book = PhoneBook.new
    phone_book.extract_numbers('07850011190')
    phone_book.extract_numbers('07850011190')
    expect(phone_book).to eq ['07850011190']
  end

end