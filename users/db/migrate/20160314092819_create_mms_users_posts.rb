class CreateMmsUsersPosts < ActiveRecord::Migration
  def change
    create_table :mms_users_posts do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
