class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :gear, index: true
      t.references :memeber, index: true

      t.timestamps
    end
  end
end
