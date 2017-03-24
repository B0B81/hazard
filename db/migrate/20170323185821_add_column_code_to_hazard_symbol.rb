class AddColumnCodeToHazardSymbol < ActiveRecord::Migration[5.0]
  def change
    add_column :hazard_symbols, :code, :string
  end
end
