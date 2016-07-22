class PurchasesForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :purchases, :products
    add_foreign_key :products, :brands
    add_foreign_key :purchases, :categories
  end
end
