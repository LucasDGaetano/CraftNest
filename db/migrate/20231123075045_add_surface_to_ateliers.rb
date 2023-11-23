class AddSurfaceToAteliers < ActiveRecord::Migration[7.1]
  def change
    add_column :ateliers, :surface, :integer
  end
end
