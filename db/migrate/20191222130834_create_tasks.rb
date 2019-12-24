class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :content
      t.boolean :check, default: false

      t.timestamps
    end
  end
end
