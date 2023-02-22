class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true 
	validates :password, length: {minimum: 6}, allow_nil: true 
	validates :password_digest, presence: true 
	
	attr_reader :password

	def password=(password)
		@password = password
		self.password_digest = BCrypt::Password.create(password)
	end
end