class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  
  attr_accessible :description, :title

  validates :description, :presence => true,
    :length => {:minimum => 10}
  validates :title, :presence => true
end
