class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.integer :staff_id
      t.integer :information_id

      t.timestamps
    end
  end
end
