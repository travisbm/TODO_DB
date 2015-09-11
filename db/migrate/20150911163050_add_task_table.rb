class AddTaskTable < ActiveRecord::Migration
  def change
    create_table(:tasks) do |t|
      t.string  :task, limit:50
      t.boolean :complete, default: TRUE
      t.timestamps
    end
  end

  def change_complete_default
    change_column_default :tasks, :complete, from: TRUE, to: FALSE
  end
end
