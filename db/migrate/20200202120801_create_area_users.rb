class CreateAreaUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :area_users do |t|
      t.references :user, foreign_key: true
      t.references :area, foreign_key: true

      t.timestamps
    end
  end
end
