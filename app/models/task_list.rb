class TaskList < ApplicationRecord
  belongs_to :user
  has_many :task_items, dependent: :destroy
  validates :user_id, presence: true
  validates :title, presence: true
end
