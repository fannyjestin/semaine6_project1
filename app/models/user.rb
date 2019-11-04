class User < ApplicationRecord
	after_create  :welcome_send

	def welcome_send
		UserMailer.welcome_email(self).deliver_now
	end
	#mail a envoyer uniquement à la nouvelle instance crée d'où le self
end
