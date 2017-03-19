class CreateJoinTableRphraseSubstance < ActiveRecord::Migration[5.0]
  def change
    create_join_table :rphrases, :substances do |t|
      # t.index [:rphrase_id, :substance_id]
      # t.index [:substance_id, :rphrase_id]
    end
  end
end
