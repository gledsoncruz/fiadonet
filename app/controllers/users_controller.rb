class UsersController < ApplicationController
	load_and_authorize_resource 

  def index
  	#@users = User.accessible_by(current_ability).search(params[:search]).paginate(:page => params[:page], :per_page => 10).order('id DESC')
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @users }
      format.js # index.js.erb 
    end
  end
end
