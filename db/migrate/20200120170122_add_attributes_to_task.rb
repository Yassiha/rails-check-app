class AddAttributesToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :priority, :string
    add_column :tasks, :start, :date
    add_column :tasks, :end, :date
    add_column :tasks, :status, :string
    add_column :tasks, :budget, :integer
  end
end
