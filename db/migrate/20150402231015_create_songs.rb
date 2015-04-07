class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
