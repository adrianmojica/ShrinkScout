class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :address, :latitude, :longitude

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?


  validates :description, presence: true
  validates :user_id, presence: true
  validates :address, presence: true
  validates_attachment :image, presence: true,
  							   content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
  							   size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { medium: "214x214#"}
  
end
