class Show < ActiveRecord::Base

  has_many :seasons
  
  validates :name, :presence => true, :uniqueness => true

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("show.position ASC") }
  scope :newest_first, lambda { order("show.created_at DESC") }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }
  
end
