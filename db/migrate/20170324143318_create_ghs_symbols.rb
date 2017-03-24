class CreateGhsSymbols < ActiveRecord::Migration[5.0]
  def change
    create_table :ghs_symbols do |t|
      t.string :title
      t.string :code
      t.string :description
      t.string :handling
      t.string :image

      t.timestamps
    end
  end
end
