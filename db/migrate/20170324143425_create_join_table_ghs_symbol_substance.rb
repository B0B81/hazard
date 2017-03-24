class CreateJoinTableGhsSymbolSubstance < ActiveRecord::Migration[5.0]
  def change
    create_join_table :ghs_symbols, :substances do |t|
      # t.index [:ghs_symbol_id, :substance_id]
      # t.index [:substance_id, :ghs_symbol_id]
    end
  end
end
