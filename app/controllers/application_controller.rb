class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   before_filter :configure_permitted_parameters, if: :devise_controller?




 	

   
	 protected
	 def configure_permitted_parameters
	 	# @companies = Company.order("created_at DESC")
   # 		@usertype = Usertype.all
   # @login = Login.all.where(company_name: current_login.company_name).first
   		@logins = Login.where(company_name: "999Studios").order("created_at DESC")

	    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :company_name, :usertype_id,:username, :email, :password, :password_confirmation, :remember_me) }
	    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
	    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :company_name, :usertype_id, :username, :email, :password, :password_confirmation, :current_password) }
	end
	private

	  # Overwriting the sign_out redirect path method
	  def after_sign_out_path_for(resource_or_scope)
	  		new_login_session_path
	  end
	  def after_sign_in_path_for(devise_scope)
	  	# @usertype = Usertype.find(3)
	  	# @usertype2 = Usertype.find(2)

	  	# if current_login.usertype_id == @usertype.usertype_id
	  	# 	dashboard_user_path
	  	# else
	  	# 	if current_login.usertype_id == @usertype2.usertype_id
	  	# 		dashboard_admin_path
	  	# 	else	  			  		
	  			dashboard_path
	  		# end
          	
     #     end

   	  end


   	  #customization to Devise Controller

   	  




end


