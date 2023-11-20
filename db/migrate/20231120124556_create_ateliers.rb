class CreateAteliers < ActiveRecord::Migration[7.1]
  def change
    create_table :ateliers do |t|
      t.string :location
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
