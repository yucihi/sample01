class Book < ActiveRecord::Base
  has_many :reviews

  validates :title, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 0 }
end
