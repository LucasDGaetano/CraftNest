class AddCoordinatesToAteliers < ActiveRecord::Migration[7.1]
  def change
    add_column :ateliers, :latitude, :float
    add_column :ateliers, :longitude, :float
  end
end
