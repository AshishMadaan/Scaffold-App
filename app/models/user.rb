class User < ActiveRecord::Base

	mount_uploader :image, ImageUploader
	validates :name, presence: true

	before_create do |user|
		user.email = user.name.capitalize if user.email.blank?
	end

	before_update :change_to_up
		def change_to_up
			self.name = name.upcase unless name.blank?
		end

	#before_validation :ensure_email_has_value
	#protected
	#def ensure_email_has_value
	#	if email.nil?
	#		self.email = name unless name.blank?
	#	end
	#end

end
