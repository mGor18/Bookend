class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :condition
      t.boolean :isPrivate
      t.text :synopsis
      t.string :genre

      t.timestamps
    end
  end
end
