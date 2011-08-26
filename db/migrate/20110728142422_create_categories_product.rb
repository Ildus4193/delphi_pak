class CreateCategoriesProduct < ActiveRecord::Migration
  def self.up
    create_table :categories_products, :id => false do |t|
      t.references :product
      t.references :category
  end
  end

  def self.down
    drop_table :categories_products
  end
end
