class CreateHphrases < ActiveRecord::Migration[5.0]
  def change
    create_table :hphrases do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
