class AlterLessonsAddRowOrder < ActiveRecord::Migration[5.0]

  add_column :lessons, :row_order, :integer
  add_index :lessons, :row_order
  

end
