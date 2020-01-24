class AddDDayToArea < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :d_day, :date
  end
end
