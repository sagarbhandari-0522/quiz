class AddStatusDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :categories, :status, 1
  end
end
