class Admin < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :seasons

  validates :email, :presence => true, :uniqueness => true
end
