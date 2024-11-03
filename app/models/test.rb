class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'
  has_many :questions
  has_many :test_passage
  has_many :user, through: :test_passage

  def self.titles_by_category(title)
    join(:category).where(categories: { title: title })
                   .order(title: :desc).pluck(:title)
  end
end
