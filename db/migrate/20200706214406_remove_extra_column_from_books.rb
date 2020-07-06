class RemoveExtraColumnFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :condition
  end
end
