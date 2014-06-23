require "securerandom"
class Mobile < ActiveRecord::Base
	belongs_to :user
	has_many :mobile_type_list, dependent: :destroy
  accepts_nested_attributes_for :mobile_type_list
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
