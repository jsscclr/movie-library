require './library'
require 'rspec/its'

RSpec.describe Library do
  subject { Library.new }
  its(:size) { is_expected.to eq(0) }
  let(:lego_movie) { Video.new( 'The Lego Movie', '2014', 'Phil Lord', [ 'Chris Pratt', 'Will Ferrell', 'Elizabeth Banks' ] ) }
  let(:grand_budapest) { Video.new( 'The Grand Budapest Hotel', '2014', 'Wes Anderson', ['Ralph Fiennes', 'F. Murray Abraham', 'Mathieu Amalric'] ) }
  let(:ida) { Video.new( 'Ida', 'Pawel Pawlikowski', [ 'Agata Kulesza', 'Agata Trzebuchowska', 'Dawid Ogrodnik' ] ) }
  
  describe '#add_video' do
    specify 'adds a video to the library' do
      subject.add_video(lego_movie)
      expect(subject.size).to eq(1)
    end
  end

  describe '#pop' do
    before { subject.add_video(lego_movie) }
    specify 'removes the last video' do
      expect { subject.pop }.to change { subject.size }.by(-1)
    end
  end

  describe '#clear!' do
    before do
      subject.add_video(lego_movie)
      subject.add_video(grand_budapest)
    end
    specify 'clears the library' do
      expect { subject.clear! }.to change { subject.videos }.to be_empty
    end
  end
end
