class AddColumnUserIdToSubstances < ActiveRecord::Migration[5.0]
  def change
    add_column :substances, :user_id, :integer
  end
end
