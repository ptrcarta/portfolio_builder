class CreateBiographies < ActiveRecord::Migration
  def change
    create_table :biographies do |t|

      t.belongs_to :owner

      t.string :first_name
      t.string :last_name

      t.string :short_description
      t.string :long_description

      t.attachment :avatar

      t.timestamps
    end
  end
end
