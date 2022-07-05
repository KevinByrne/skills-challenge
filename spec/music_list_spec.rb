require 'music_list'

RSpec.describe MusicList do

  it 'creates a new instance of MusicList' do
    my_music = MusicList.new
  end

  # it 'return a single track entered into argument' do
  #   my_music = MusicList.new
  #   result = my_music.add_track("Livin on a prayer")
  #   expect(result).to eq "Livin on a prayer"
  # end

  it 'adds a single track to an array' do
    my_music = MusicList.new
    result = my_music.add_track("Livin on a prayer")
    expect(result).to eq ['Livin on a prayer']
  end


end