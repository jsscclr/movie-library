class Video

  attr_reader :title, :year :director

  def initialize (title, year, director)
    @title = title
    @year = year
    @director = director
  end

  def to_s
    "#{@title} (#{@year}) Directed by #{@director}"
  end

end
