class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :link_id
      t.integer :user_id
      t.integer :feels

      t.timestamps null: false
    end
  end
end
