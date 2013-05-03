class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.references :user
      t.float :lat
      t.float :lng
      t.string :name

      t.timestamps
    end
    add_index :maps, :user_id
  end
end
