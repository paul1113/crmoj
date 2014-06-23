require "securerandom"
class AddressTypeList < ActiveRecord::Base
		belongs_to :address
		before_create :generate_uuid

			private
				def generate_uuid
						self.uuid = SecureRandom.uuid
				end
end
