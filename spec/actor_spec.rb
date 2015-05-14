require 'rspec/its'
require './actor'

RSpec.describe Actor do
  let(:movie1) { Video.new('Fight Club', '1999', 'David Fincher') }
  let(:movie2) { Video.new('The Grand Budapest Hotel', '2014', 'Wes Anderson') }
  let(:movies) { [ movie1, movie2 ] }
  subject(:actor) { Actor.new('Edward Norton', movies) }
  
  # Define an Actor class and allow a movie to have many actors.
  its(:credits) { is_expected.to include(movie1) }
  its(:credits) { is_expected.to include(movie2) }

end
