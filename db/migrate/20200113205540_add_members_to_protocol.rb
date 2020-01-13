class AddMembersToProtocol < ActiveRecord::Migration[5.2]
  def change
    add_column :protocols, :members, :text
  end
end
