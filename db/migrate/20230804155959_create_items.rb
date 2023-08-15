class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :name
      t.string :description
      t.string :condition
      t.string :img_url
      t.string :email_address
    end
  end
end
