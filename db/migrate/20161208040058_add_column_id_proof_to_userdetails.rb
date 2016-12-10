class AddColumnIdProofToUserdetails < ActiveRecord::Migration
  def change
    add_column :userdetails, :id_proof, :string
  end
end
