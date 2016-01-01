class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true
  validates :email, format: {with: /@/}
  validates :email, uniqueness: true
end
