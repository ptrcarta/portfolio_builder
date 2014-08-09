class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|

      t.string :token_string
      t.datetime :expires_at

      t.string :type

      t.string :tokenable_type
      t.integer :tokenable_id

      t.timestamps
    end
  end
end
