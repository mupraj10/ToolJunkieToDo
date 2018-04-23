class CreateTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :task_lists do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :task_lists, [:user_id, :created_at]
  end
end
