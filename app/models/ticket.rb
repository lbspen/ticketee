class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  has_many :assets

  accepts_nested_attributes_for :assets
  attr_accessible :description, :title, :assets_attributes

  validates :description, :presence => true,
    :length => {:minimum => 10}
  validates :title, :presence => true
end
