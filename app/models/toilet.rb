class Toilet < ActiveRecord::Base
  attr_accessible :occupied, :sender, :comment, :latitude, :longitude, :created


	def self.hash_for_toilet(toilet)

		toilet_hash = Hash.new
		toilet_hash["occupied"] = toilet.occupied
		toilet_hash["sender"] = toilet.sender
		toilet_hash["comment"] = toilet.comment
		toilet_hash["latitude"] = toilet.latitude
		toilet_hash["longitude"] = toilet.longitude
		toilet_hash["created"] = toilet.created_at

		return toilet_hash
	end



	def self.hash_for_toilets(toilets)

		toilets_hash = Array.new

		toilets.each do |toilet|
			toilet_hash = self.hash_for_toilet(toilet)
			toilets_hash.push(toilet_hash)
		end

		response_hash = Hash.new
		response_hash["toilets"] = toilets_hash

		return response_hash;

	end
end
