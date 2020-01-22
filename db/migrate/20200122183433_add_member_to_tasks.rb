class AddMemberToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :member, :string
  end
end
