class AddAdrcolumsToSubstance < ActiveRecord::Migration[5.0]
  def change
    add_column :substances, :unnumber, :string
    add_column :substances, :hazardcode, :string
    add_column :substances, :classificationcode, :string
    add_column :substances, :packinggroup, :string
    add_column :substances, :hazardclass, :string
    add_column :substances, :transportcategory, :string
    add_column :substances, :qmax, :integer
  end
end
