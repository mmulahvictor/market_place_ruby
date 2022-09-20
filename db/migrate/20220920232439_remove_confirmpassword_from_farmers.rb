class RemoveConfirmpasswordFromFarmers < ActiveRecord::Migration[6.1]
  def change
    remove_column :farmers, :confpassword
  end
end
