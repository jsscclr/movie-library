class Video

  attr_reader :title, :year, :director, :actors, :credits

  def initialize (title, year, director, actors)
    @title = title
    @year = year
    @director = director
    @actors = actors
    @credits = add_credits
  end

  def to_s
    "#{@title} (#{@year}) Directed by #{@director}"
  end

  def add_credits
    credits = []
    credits << director
    @actors.each do |actor|
      credits << actor
    end
    credits
  end

end
