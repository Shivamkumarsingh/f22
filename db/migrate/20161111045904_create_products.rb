class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.date :expire_date
    	t.string :name
    	t.string :sku_id
    	t.integer :price
    	t.string :description
      t.text :tags
      t.text :categories
      t.text :images
      t.timestamps null: false
    end
  end
end
