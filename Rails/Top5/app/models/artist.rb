class Artist < ActiveRecord::Base
	has_many :songs
	validates :name, presence: true
    validates :artist_id, presence: true
    validates :rating, presence: true
      validates :name, uniqueness: true

end
