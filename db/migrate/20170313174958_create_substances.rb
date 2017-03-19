class CreateSubstances < ActiveRecord::Migration[5.0]
  def change
    create_table :substances do |t|
      t.string :title
      t.references :company, foreign_key: true
      t.date :date
      t.string :application
      t.string :protection_level
      t.string :signalword
      t.boolean :inhalation

      t.timestamps
    end
  end
end
