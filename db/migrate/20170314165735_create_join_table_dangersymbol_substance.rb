class CreateJoinTableDangersymbolSubstance < ActiveRecord::Migration[5.0]
  def change
    create_join_table :dangersymbols, :substances do |t|
      # t.index [:dangersymbol_id, :substance_id]
      # t.index [:substance_id, :dangersymbol_id]
    end
  end
end
