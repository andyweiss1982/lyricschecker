class AddShootToYearObjs < ActiveRecord::Migration
  def change
    add_column :year_objs, :shoot, :integer
  end
end
