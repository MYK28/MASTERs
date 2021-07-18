class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :staff_id
      t.integer :admin_id
      t.integer :information_id
      t.boolean :is_reply, null: false, default: false

      t.timestamps
    end
  end
end
