class AddFkeys < ActiveRecord::Migration
  def change
    add_foreign_key :purchases, :products
    add_foreign_key :purchases, :users
    add_foreign_key :products, :brands
    add_foreign_key :products, :categories
  end
end
