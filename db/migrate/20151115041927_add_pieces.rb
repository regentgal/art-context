class AddPieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string  :institution
      t.string  :institutional_id
      t.string  :title
      t.string  :medium
      t.string  :credit_line
      t.string  :department
      t.string  :physical_location
      t.string  :web_url
      t.string  :images
      t.string  :provenance_text
      t.string  :creation_date
      t.date    :creation_date_earliest
      t.date    :creation_date_latest
      t.date    :date_acquired
      t.float   :item_width
      t.float   :item_height
      t.float   :item_depth
      t.float   :item_diameter
      t.string  :accession_number, index: true
      t.belongs_to :author, index: true
    end
  end
end
