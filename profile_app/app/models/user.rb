class User < ApplicationRecord
  has_many :activities
  has_many :hobbies
  has_many :comments
end
