class AddFieldsToYearObjs < ActiveRecord::Migration
  def change
    add_column :year_objs, :murder, :integer
    add_column :year_objs, :stab, :integer
    add_column :year_objs, :kill, :integer
    add_column :year_objs, :steal, :integer
    add_column :year_objs, :rape, :integer
    add_column :year_objs, :thug, :integer
    add_column :year_objs, :trigger, :integer
    add_column :year_objs, :gang, :integer
    add_column :year_objs, :gun, :integer
    add_column :year_objs, :total, :integer
  end
end
