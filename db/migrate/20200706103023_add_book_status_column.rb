class AddBookStatusColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :book_status, :string
  end
end
