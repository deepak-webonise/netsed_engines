class CreateMmsBackendPosts < ActiveRecord::Migration
  def change
    create_table :mms_backend_posts do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
