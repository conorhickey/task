class Student < ActiveRecord::Base
	has_many :gears
	Colleges = [ "NUIG", "GMIT"]
	validates :name, presence: true

	validates :username, :d,:e,:other, presence: true, unless: :club?
	def club?  
		name == "Club"
	end	

	validates :username, uniqueness: true
	validates :other, inclusion: Colleges, unless: :club?
end
