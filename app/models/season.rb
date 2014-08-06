class Season < ActiveRecord::Base
  belongs_to :show
  has_and_belongs_to_many :editors, :class_name => "Admin"
  has_many :episodes
  
  validates :name, :presence => true, :uniqueness => true
  validates :permalink, :presence => true, :uniqueness => true
  validates :show_id, :presence => true

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("season.position ASC") }
  scope :newest_first, lambda { order("season.created_at DESC") }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }
  
end
