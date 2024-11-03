class User < ApplicationRecord
  has_many :test_passage
  has_many :test, through: :test_passage
  has_many :tests_author, class_name: 'Test', foreign_key: :author_id

   validates :email, presence: true
  
  def tests_by_level(level)
    tests.where(level: level)
  end
end
