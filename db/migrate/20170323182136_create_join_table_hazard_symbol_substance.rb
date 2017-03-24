class CreateJoinTableHazardSymbolSubstance < ActiveRecord::Migration[5.0]
  def change
    create_join_table :hazard_symbols, :substances do |t|
      # t.index [:hazard_symbol_id, :substance_id]
      # t.index [:substance_id, :hazard_symbol_id]
    end
  end
end
