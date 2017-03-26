class AddDermaleToSubstance < ActiveRecord::Migration[5.0]
  def change
    add_column :substances, :dermale, :boolean
  end
end
