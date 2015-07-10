class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :phone_number
      t.string :blood_type
      t.string :city
      t.string :email
      t.timestamps null: false
    end
  end
end
