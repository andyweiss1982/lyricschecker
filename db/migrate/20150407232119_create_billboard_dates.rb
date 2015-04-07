class CreateBillboardDates < ActiveRecord::Migration
  def change
    create_table :billboard_dates do |t|
      t.string :date

      t.timestamps null: false
    end
  end
end
