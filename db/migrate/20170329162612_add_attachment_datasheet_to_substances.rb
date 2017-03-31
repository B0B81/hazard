class AddAttachmentDatasheetToSubstances < ActiveRecord::Migration
  def self.up
    change_table :substances do |t|
      t.attachment :datasheet
    end
  end

  def self.down
    remove_attachment :substances, :datasheet
  end
end
