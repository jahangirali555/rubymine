class Invite < ActiveRecord::Base
	validates_presence_of :email
	# validates_presence_of :company_name
end
