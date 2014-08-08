class Episode < ActiveRecord::Base
  belongs_to :season

  validates :name, :presence => true
  validates :content, :presence => true
  
  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("episodes.position ASC") }
  scope :newest_first, lambda { order("episodes.created_at DESC") }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }
  
end
