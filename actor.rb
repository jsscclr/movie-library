class Actor

  attr_accessor :name, :movies

  def initialize (name, movies = [])
    @name = name
    @movies = movies
  end

  def add_to_video_credits
    @movies.each do |movie|
      movie.add_credits(@name)
    end
  end
end
