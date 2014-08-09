class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|

      t.string :password_digest
      t.string :email_address
      t.string :last_name


      t.timestamps
    end
  end
end
