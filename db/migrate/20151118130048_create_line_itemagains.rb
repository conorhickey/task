class CreateLineItemagains < ActiveRecord::Migration
  def change
    create_table :line_itemagains do |t|
      t.references :gear, index: true
      t.references :student, index: true

      t.timestamps
    end
  end
end
