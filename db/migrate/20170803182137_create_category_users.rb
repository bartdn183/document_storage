class CreateCategoryUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :category_users do |t|
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
