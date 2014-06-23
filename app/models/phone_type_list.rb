require "securerandom"
class PhoneTypeList < ActiveRecord::Base
	belongs_to :phone
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
