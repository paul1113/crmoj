require "securerandom"
class FaxTypeList < ActiveRecord::Base
	belongs_to :fax
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
