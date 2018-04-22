class TaskItem < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :task_list

  # validations
  validates :task_list_id, presence: true
  validates :title, presence: true
  default_scope -> { order(created_at: :desc) }
end
