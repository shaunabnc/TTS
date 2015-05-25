class Song < ActiveRecord::Base
  belongs_to :artist
  validates :name, presence: true
   validates :name, uniqueness: true

end
