class Piece
  attr_accessor :id, :title, :creation_date, :creation_date_earliest, :creation_date_latest,
                :medium, :accession_number, :credit_line, :date_acquired, :department,
                :physical_location, :item_width, :item_height, :item_depth, :item_diameter,
                :web_url, :image_url, :provenance_text

  def initialize(h={})
    h.each { |k,v| send("#{k}=",v) }
  end

  def images
    return [] unless id

    images_path = "/Users/jln/Desktop/all_cmoa_collection_images"
    image_glob = "#{images_path}/#{id}*"
    Dir.glob(image_glob)
  end
end