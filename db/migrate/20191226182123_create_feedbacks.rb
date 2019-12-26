class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :title
      t.text :content
      t.references :task, foreign_key: true
      t.references :protocol, foreign_key: true
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
