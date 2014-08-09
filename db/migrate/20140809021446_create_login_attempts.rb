class CreateLoginAttempts < ActiveRecord::Migration
  def change
    create_table :login_attempts do |t|

      t.string :source_ip
      t.boolean :was_successful

      t.string :authenticable_type
      t.integer :authenticable_id

      t.timestamps
    end
  end
end
