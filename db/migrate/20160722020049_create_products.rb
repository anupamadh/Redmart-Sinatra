class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|

      t.string :name
      t.integer :brands
      t.string  :categories
      t.float :price

      t.timestamps
      end

  end
end
