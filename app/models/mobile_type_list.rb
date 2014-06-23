require "securerandom"
class MobileTypeList < ActiveRecord::Base
	belongs_to :mobile
  before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
