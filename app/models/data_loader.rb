class DataLoader
  def load(json_data:)
    json_pieces = json_data['things']
    json_pieces.each do |p|
      author_json = p.delete('creator').first

      piece = Piece.from_cmoa_json(p)

      if author_json
        piece.author = Author.find_by(cited_name: author_json['cited_name']) ||
                       Author.from_cmoa_json(author_json)
      end

      piece.save!
    end
  end
end
