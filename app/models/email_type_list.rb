require "securerandom"
class EmailTypeList < ActiveRecord::Base
	belongs_to :email
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
