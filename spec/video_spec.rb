require 'rspec/its'
require './video'

RSpec.describe Video do
  let(:actor1) { Actor.new('Edward Norton') }
  let(:actor2) { Actor.new('Brad Pitt') }
  let(:director) { "David Fincher" }
  let(:credits) { [ actor1, actor2, director ] }
  subject(:movie) { Video.new('Fight Club', '1999', director, [actor1, actor2]) }

  # Videos should have a title, year and director.
  its(:title) { is_expected.to eq('Fight Club') }
  its(:year) { is_expected.to eq('1999') }
  its(:director) { is_expected.to eq('David Fincher') }
  its(:to_s) { is_expected.to eq('Fight Club (1999) Directed by David Fincher') }

  # Allow a movie to have many actors.
  its(:credits) { is_expected.to include(actor1) }
  its(:credits) { is_expected.to include(actor2) }
  its(:credits) { is_expected.to include(director) }

end
