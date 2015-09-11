class AddTaskTable < ActiveRecord::Migration
  def change
    creat_table(:tasks) do |t|
      t.string  :task, limit:50
      t.boolean :complete, default: TRUE
      t.timestamps
    end
  end
end
