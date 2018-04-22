class TaskItem < ApplicationRecord
  belongs_to :task_list
  validates :task_list_id, presence: true
  validates :title, presence: true
  default_scope -> { order(created_at: :desc) }
end
