class Admin < ActiveRecord::Base
  has_secure_password
  acts_as_list

  has_and_belongs_to_many :seasons

  validates :email, :presence => true, :uniqueness => true
end
