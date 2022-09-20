class UpdateFarmers < ActiveRecord::Migration[6.1]
  def change
    add_column :farmers, :password, :string
    add_column :farmers, :confpassword, :string
    add_column :farmers, :email, :string
  end
end
