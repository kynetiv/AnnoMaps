class CreateMarkers < ActiveRecord::Migration
  def change
    create_table :markers do |t|
      t.references :map
      t.float :lat
      t.float :lng
      t.text :content

      t.timestamps
    end
    add_index :markers, :map_id
  end
end
