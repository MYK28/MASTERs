class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :image_id
      t.text :title
      t.text :message
      t.integer :admin_id

      t.timestamps
    end
  end
end
