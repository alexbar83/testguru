class Test < ApplicationRecord
  belongs_to :category

  def self.titles_by_category(title)
    join(:category).where(categories: { title: title })
                   .order(title: :desc).pluck(:title)
  end
end
