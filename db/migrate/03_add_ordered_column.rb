class AddOrderedColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :ordered, :boolean
  end

end
