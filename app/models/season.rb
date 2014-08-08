class Season < ActiveRecord::Base
  belongs_to :show
  has_and_belongs_to_many :editors, :class_name => "Admin"
  has_many :episodes
  
  acts_as_list

  validates :name, :presence => true, :uniqueness => true, length: { in: 5..100 }
  validates :permalink, :presence => true, :uniqueness => true, length: { in: 5..20 }

  scope :visible, lambda { where(:visible => true) }
  scope :invisible, lambda { where(:visible => false) }
  scope :sorted, lambda { order("seasons.position ASC") }
  scope :newest_first, lambda { order("seasons.created_at DESC") }
  scope :search, lambda { |query| where(["name like ?", "%#{query}%"]) }
  
end
