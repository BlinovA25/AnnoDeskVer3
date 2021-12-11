class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :fullname
      t.string :birthday
      t.string :e­mail
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip
      t.string :password
      t.string :confirm_password
      t.references :role, null: false, foreign_key: true
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
