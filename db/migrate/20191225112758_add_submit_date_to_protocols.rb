class AddSubmitDateToProtocols < ActiveRecord::Migration[5.2]
  def change
    add_column :protocols, :creator, :string
    add_column :protocols, :submit_date, :string
    add_column :protocols, :submitter, :string
  end
end
