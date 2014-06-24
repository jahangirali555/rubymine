#Customise controller, that handles additional activites of DEVISE GEM
class LoginController < ApplicationController
	 before_filter :authenticate_login!

#dashboard for superAdmin


  def index
  	# @company_names = current_login.company_name
  	@usertype = Usertype.find(1)
    @usertype2 = Usertype.find(2) 
    @login = Login.all.where(company_name: current_login.company_name)

  	@usertype = @usertype.usertype_id
    @usertype2 = @usertype2.usertype_id
  	@curr_usertype = current_login.usertype_id

  
  end

  def new
    @login = Login.new
  end

    # GET /logins/1
  # GET /logins/1.json
  def show
    @login = Login.where(id:params[:id])
  end

    # GET /invites/1/edit
  def edit
     @login = Login.where(id:params[:id]).first
  end

  # PATCH/PUT /Login/1
  # PATCH/PUT /Login/1.json
  def update
    @book = Login.find(params[:id])


    @book.usertype_id =  params[:login][:usertype_id]
    @book.save
    # sad
    # sdfsdfs
    # true
    respond_to do |format|
      if @book
        format.html { redirect_to dashboard_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: dashboard_path }
      else
        format.html { render :edit }
        format.json { render json: @login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resource
  def destroy
    @login_new = Login.find(params[:id])
    @login_new.delete

    respond_to do |format|
      format.html { redirect_to dashboard_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
   
  end
  

end
