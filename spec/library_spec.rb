require './library'
require 'rspec/its'

RSpec.describe Library do
  subject { Library.new }
  its(:size) { is_expected.to eq(0) }
  let(:lego_movie) { Video.new( 'The Lego Movie', '2014', 'Phil Lord', [ 'Chris Pratt', 'Will Ferrell', 'Elizabeth Banks' ] ) }
  let(:grand_budapest) { Video.new( 'The Grand Budapest Hotel', '2014', 'Wes Anderson', ['Ralph Fiennes', 'F. Murray Abraham', 'Mathieu Amalric'] ) }
  let(:ida) { Video.new( 'Ida', '2000', 'Pawel Pawlikowski', [ 'Agata Kulesza', 'Agata Trzebuchowska', 'Dawid Ogrodnik' ] ) }
  
  describe '#add_video' do
    specify 'adds a video to the library' do
      subject.add_video(lego_movie)
      expect(subject.size).to eq(1)
    end
  end

  describe '#pop' do
    before do
      subject.add_video(lego_movie)
      subject.add_video(grand_budapest)
      subject.add_video(ida)
    end
    specify 'removes the last video' do
      expect { subject.pop }.to change { subject.size }.by(-1)
      expect { subject.pop }.to change { subject.size }.to_not include(ida)
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

  describe '#delete' do
    before do
      subject.add_video(lego_movie)
      subject.add_video(grand_budapest)
    end

    specify 'library size is decreased' do
      expect { subject.delete(lego_movie) }.to change { subject.size }.by(-1)
    end

    specify 'library no longer contains the lego movie' do
      expect { subject.delete(lego_movie) }.to change { subject.videos }.to not_include { lego_movie }
    end
  end
end
