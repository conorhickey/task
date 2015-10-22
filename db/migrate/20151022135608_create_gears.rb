class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :owner
      t.string :category
      t.string :brand
      t.string :model
      t.string :size
      t.string :description
      t.string :borrow
      t.string :selling
      t.decimal :price, precision: 8, scale: 2
      t.text :image

      t.timestamps
    end
  end
end
