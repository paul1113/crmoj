require "securerandom"
class Fax < ActiveRecord::Base
	belongs_to :user
	has_many :fax_type_list, dependent: :destroy
  accepts_nested_attributes_for :fax_type_list
	before_create :generate_uuid

		private
			def generate_uuid
					self.uuid = SecureRandom.uuid
			end
end
