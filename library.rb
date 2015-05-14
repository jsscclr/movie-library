class Library

  attr_reader :videos

  def initialize
    @videos = []
  end

  def size
    @videos.size
  end

  def add_video(video)
    @videos << video
  end

  #removes the last video
  def pop
    @videos.pop
  end

  #clears the library
  def clear!
    @videos = []
  end
end
