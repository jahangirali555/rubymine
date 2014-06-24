class Logins::RegistrationsController < Devise::RegistrationsController
	# GET /resource/sign_up
  def new()

  	if params[:company_name]
      @company =  Invite.where(company_name: params[:company_name]).first
    end
      # @login = Login.find(params[:id])
    
    @usertype =  "1"
  	
    build_resource({})
    respond_with self.resource

  end



  # POST /resource
  def create
    build_resource(sign_up_params)

    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  def edit
    render :edit
  end



end