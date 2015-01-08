class Review < ActiveRecord::Base
  belongs_to :book

  validates :book, presence: true
  validates :body, presence: true
end
