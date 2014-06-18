class LoginController < ApplicationController
	 before_filter :authenticate_login!
  def index
  	# @company_names = current_login.company_name
  	@login = Login.all.where(company_name: current_login.company_name)
  end
end
