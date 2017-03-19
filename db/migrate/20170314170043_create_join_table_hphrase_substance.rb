class CreateJoinTableHphraseSubstance < ActiveRecord::Migration[5.0]
  def change
    create_join_table :hphrases, :substances do |t|
      # t.index [:hphrase_id, :substance_id]
      # t.index [:substance_id, :hphrase_id]
    end
  end
end
