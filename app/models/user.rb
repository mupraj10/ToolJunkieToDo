class User < ApplicationRecord
  # user has many task lists
  before_save { self.email = email.downcase }

  #   validations for email

  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}

  #   validations for password
  has_secure_password

  validates :password, presence: true, length: {minimum: 6}

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
      BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  #   creating associations for tasks

  has_many :task_lists, dependent: :destroy
  has_many :task_items, through: :task_item
end
