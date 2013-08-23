class InterestsController < ApplicationController
before_filter :signed_in_user
before_filter :admin_user

  def new
      @interest = Interest.new
  end
 
 def create
    @interest = Interest.new(params[:interest])
	if @interest.save
	  flash[:success] = "You've created a new Interest, use it carefully."
	  redirect_to @interest
	else
	  render 'new'
	end
  end
end
