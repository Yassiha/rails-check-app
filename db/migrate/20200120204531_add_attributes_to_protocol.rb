class AddAttributesToProtocol < ActiveRecord::Migration[5.2]
  def change
    add_column :protocols, :start, :date
    add_column :protocols, :end, :date
  end
end
