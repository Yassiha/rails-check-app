class AddMembersToArea < ActiveRecord::Migration[5.2]
  def change
    add_column :areas, :members, :text
  end
end
