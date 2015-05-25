class Movie < ActiveRecord::Base
	validates :title, presence: true, length: {minimum: 5}
	validates :description, presence: true 
	validates :director, presence: true 
	validates :duration, presence: true, numericality: true
	belongs_to :user
	has_many :reviews
	has_attached_file :image, :styles => {small: "150x150>", :medium => "300x300>", :thumb => "100x100>" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
