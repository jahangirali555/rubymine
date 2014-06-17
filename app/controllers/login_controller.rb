class LoginController < ApplicationController
  def index
  	@login = Login.order("created_at DESC")
  end
end
