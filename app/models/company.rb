class Company < ActiveRecord::Base

	belongs_to :user
	belongs_to :login
end
