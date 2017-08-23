class AddProofToCommments < ActiveRecord::Migration[5.0]
  def change
    add_column :commments, :proof, :string
  end
end
