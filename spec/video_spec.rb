require 'rspec/its'
require './video'

RSpec.describe Video do
  
  subject(:movie) { Movie.new('Fight Club', '1999', 'David Fincher') }
  
  # Videos should have a title, year and director.
  its(:title) { is_expected.to eq('Fight Club') }
  its(:year) { is_expected.to eq('1999') }
  its(:director) { is_expected.to eq('David Fincher') }
  its(:to_s) { is_expected.to eq('Fight Club (1999) Directed by David Fincher') }

end
