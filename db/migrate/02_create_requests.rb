class CreateRequests < ActiveRecord::Migration[5.0]
  def up
    create_table :requests do |t|
      t.string :item
      t.string :vendor
      t.integer :quantity
      t.float :price
      t.string :link
      t.integer :user_id
      t.datetime
    end
  end
end
