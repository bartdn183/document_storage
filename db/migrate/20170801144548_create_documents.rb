class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.string :uploaded_by
      t.integer :category_id

      t.timestamps
    end
  end
end
