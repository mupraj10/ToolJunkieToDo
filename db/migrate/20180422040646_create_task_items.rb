class CreateTaskItems < ActiveRecord::Migration[5.2]
  def change
    create_table :task_items do |t|
      t.string :content
      t.datetime :deadline
      t.string :task_list
      t.string :references

      t.timestamps
    end
    add_index :task_items, [:task_list, :created_at]
  end
end
