class PiecesController < ActionController::Base
  def show
    @piece = Piece.new(id: "b4bd0dce-4bc7-4ff8-8775-87b03de199d7")
  end
end