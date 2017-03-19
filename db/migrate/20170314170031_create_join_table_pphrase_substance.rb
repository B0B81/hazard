class CreateJoinTablePphraseSubstance < ActiveRecord::Migration[5.0]
  def change
    create_join_table :pphrases, :substances do |t|
      # t.index [:pphrase_id, :substance_id]
      # t.index [:substance_id, :pphrase_id]
    end
  end
end
