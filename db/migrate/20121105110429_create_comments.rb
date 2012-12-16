class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end