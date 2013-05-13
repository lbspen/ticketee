class Ticket < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :title

  validates :description, :presence => true
  validates :title, :presence => true
end
