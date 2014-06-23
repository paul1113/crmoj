require "securerandom"
class User < ActiveRecord::Base
		has_many :address, dependent: :destroy
	  accepts_nested_attributes_for :address

    has_many :fax, dependent: :destroy
    accepts_nested_attributes_for :fax

		has_many :arealist, dependent: :destroy
		accepts_nested_attributes_for :arealist

    has_many :im, dependent: :destroy
    accepts_nested_attributes_for :im

    has_many :positionlist, dependent: :destroy
    accepts_nested_attributes_for :positionlist

    has_many :subjectionlist, dependent: :destroy
    accepts_nested_attributes_for :subjectionlist

    has_many :departmentlist, dependent: :destroy
    accepts_nested_attributes_for :departmentlist
		
		
    has_many :mobile, dependent: :destroy
    accepts_nested_attributes_for :mobile

    has_many :email, dependent: :destroy
    accepts_nested_attributes_for :email

    has_many :phone, dependent: :destroy
    accepts_nested_attributes_for :phone

		before_create :generate_uuid

			private
				def generate_uuid
				self.uuid = SecureRandom.uuid
				end
		
end
