class User < ApplicationRecord
    # user has many task lists 
  has_many :task_lists 
end
