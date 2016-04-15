class CreateMmsUsersProfiles < ActiveRecord::Migration
  def change
    create_table :mms_users_profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :city
      t.string :address
      t.string :phone_number
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
