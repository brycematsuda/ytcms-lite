class Episode < ActiveRecord::Base
  belongs_to :season

  validates :name, :presence => true
  validates :content, :presence => true
  
  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("episode.position ASC") }
  scope :newest_first, lambda { order("episode.created_at DESC") }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }
  
end
