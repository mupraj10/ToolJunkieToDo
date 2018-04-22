class TaskItem < ApplicationRecord
  # associations
  belongs_to :task_list
  has_one :user, through: :task_list
  # validations
  validates :task_list_id, presence: true
  validates :content, presence: true
end
