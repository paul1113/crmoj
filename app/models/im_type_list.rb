require "securerandom"
class ImTypeList < ActiveRecord::Base
	belongs_to :im
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
