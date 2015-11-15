class AddAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string  :institution
      t.string  :institutional_id
      t.string  :full_name
      t.string  :cited_name
      t.string  :role
      t.string  :nationality
      t.string  :birth_place
      t.string  :death_place

      t.date    :birth_date
      t.date    :death_date
    end
  end
end
