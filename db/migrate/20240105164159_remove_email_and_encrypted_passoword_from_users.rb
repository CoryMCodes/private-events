class RemoveEmailAndEncryptedPassowordFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :email, :string 
    remove_column :users, :encrypted_password, :string
  end
end
