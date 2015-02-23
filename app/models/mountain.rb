class Mountain < ActiveRecord::Base

  validates :name, :elevation, :climbed, presence: true
  validates :name, uniqueness: true
end
