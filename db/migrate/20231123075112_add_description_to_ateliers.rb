class AddDescriptionToAteliers < ActiveRecord::Migration[7.1]
  def change
    add_column :ateliers, :description, :text
  end
end
