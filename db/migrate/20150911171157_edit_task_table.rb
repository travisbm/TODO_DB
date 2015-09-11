class EditTaskTable < ActiveRecord::Migration
  def change
    change_column_default :tasks, :complete, from: TRUE, to: FALSE
  end
end
