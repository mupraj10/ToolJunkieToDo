class TaskList < ApplicationRecord
  # adding in the fact that the each task list belongs to a user
  belongs_to :user
  has_many :task_items
end
