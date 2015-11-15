require 'rails_helper'

describe Piece, type: :model do
  describe 'images' do
    subject(:piece) { Piece.new }

    context 'when id is present' do
      it 'returns a list of images when available' do
        # FIXME: should be setting up the data source too instead of relying
        # on the existing data.
        piece.id = '692a68c5-af1e-4124-80f1-cbf38be51abe'
        expect(piece.images.count).to be > 0
      end

      it 'returns an empty list when no images are available' do
        piece.id = 'blah'
        expect(piece.images.count).to eq 0
      end
    end

    context 'no id available' do
      it 'returns an empty list' do
        expect(piece.images.count).to eq 0
      end
    end
  end
end

