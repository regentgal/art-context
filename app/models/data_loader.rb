class DataLoader  
  def load(json_data:)
    json_pieces = json_data["things"]
    json_pieces.each do |p|
      # FIXME: Seems like representers should be able to do the trick here.
      author_json = p.delete('creator')
      author = Author.new(author_json.first) if author_json

      piece = Piece.new(p)
    end
  end
end