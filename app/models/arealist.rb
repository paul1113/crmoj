require "securerandom"
class Arealist < ActiveRecord::Base
	belongs_to :user
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
