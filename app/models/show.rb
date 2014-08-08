class Show < ActiveRecord::Base

  has_many :seasons
  
  validates :name, :presence => true, :uniqueness => true, length: { in: 5..100 }
  validates :position, :presence => true, numericality: { only_integer: true, greater_than: 0 }

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("shows.position ASC") }
  scope :newest_first, lambda { order("shows.created_at DESC") }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }
  
end
