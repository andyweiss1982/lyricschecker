class AddBbdRefsToSongs < ActiveRecord::Migration
  def change
    add_reference :songs, :billboard_date, index: true
    add_foreign_key :songs, :billboard_dates
  end
end
