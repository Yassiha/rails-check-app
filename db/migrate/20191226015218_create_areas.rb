class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :title
      t.text :content
      t.string :creator

      t.timestamps
    end
  end
end
