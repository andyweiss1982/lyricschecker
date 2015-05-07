class CreateYearObjs < ActiveRecord::Migration
  def change
    create_table :year_objs do |t|
      t.integer :num

      t.timestamps null: false
    end
  end
end
