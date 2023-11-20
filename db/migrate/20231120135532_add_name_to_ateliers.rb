class AddNameToAteliers < ActiveRecord::Migration[7.1]
  def change
    add_column :ateliers, :name, :string
  end
end
