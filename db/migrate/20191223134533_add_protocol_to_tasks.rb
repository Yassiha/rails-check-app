class AddProtocolToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :protocol, foreign_key: true
  end
end
