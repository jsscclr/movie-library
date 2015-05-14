class Actor

  attr_accessor :name, :movies

  def initialize (name, movies = [])
    @name = name
    @movies = movies
  end

end
