class SessionsController < ApplicationController
  def new

  end

  def create
  	cat = Cat.find_by_name(params[:login][:name])
  	if cat && cat.authenticate(params[:login][:password])
  		session[:cat_id] = cat.id.to_s
  		redirect_to cat_path(cat)
  	else
  		render :new
  	end
  end

  def destroy
  	
  end
end
