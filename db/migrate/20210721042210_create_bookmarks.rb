class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.references :staff, foreign_key: true, null: false
      t.references :information, foreign_key: true, null: false

      t.timestamps
    end
  end
end
