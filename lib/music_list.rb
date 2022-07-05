class MusicList

  def initialize
   @my_list = []
  end

  def add_track(track_name)
    @my_list = [] << track_name
  end

  def see_tracks
    return @my_list
  end

end