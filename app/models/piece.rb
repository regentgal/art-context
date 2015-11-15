class Piece
  attr_accessor :id, :title, :creation_date, :creation_date_earliest, :creation_date_latest,
                :medium, :accession_number, :credit_line, :date_acquired, :department,
                :physical_location, :item_width, :item_height, :item_depth, :item_diameter,
                :web_url, :images, :provenance_text

  def initialize(h={})
    h.each { |k,v| send("#{k}=",v) }
  end

  # def images
  #   return [] unless id
  #   image_glob = "#{Rails.root.join('app', 'assets', 'images')}/#{id}*"
  #   Dir[image_glob].map { |i| File.basename(i) }
  # end
end