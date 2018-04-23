class TaskList < ApplicationRecord
  # associations 
  belongs_to :user
  has_many :task_items, dependent: :destroy
  # validations 
  validates :user_id, presence: true
  validates :title, presence: true
end
