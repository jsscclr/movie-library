require 'rspec/its'
require './actor'

RSpec.describe Actor do
  let(:movie1) { Video.new('Fight Club', '1999', 'David Fincher') }
  let(:movie2) { Video.new('The Grand Budapest Hotel', '2014', 'Wes Anderson') }
  let(:movies) { [] }
  subject(:actor) { Actor.new('Edward Norton', movies) }

  # Define an Actor class.
  # You should also be able to list the movies an actor was in
  define '#credits' do
    
    context 'no movies have been added to the actor' do
      its(:credits) { is_expected.to be_empty }
    end
    
    context "returns actors' movie credits" do
      let(:movies) { [ movie1, movie2 ] }
      its(:credits) { is_expected.to include(movie1) }
      its(:credits) { is_expected.to include(movie2) }
    end
    
  end

end
