class PiecesController < ActionController::Base
  def show
    @piece = Piece.new(id: "692a68c5-af1e-4124-80f1-cbf38be51abe")
  end
end