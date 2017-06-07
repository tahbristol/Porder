class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
    end
  end

end
