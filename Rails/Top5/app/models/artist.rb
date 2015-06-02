class Artist < ActiveRecord::Base
	has_many :songs
	validates :name, presence: true
    validates :artist_id, presence: true
    validates :rating, presence: true
      validates :name, uniqueness: true

    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
