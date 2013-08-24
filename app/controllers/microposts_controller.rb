class MicropostsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user, only: :destroy
  

  def create
    @micropost = current_user.microposts.build(params[:micropost])
    @micropost.category = Interest.find_by_id(@micropost.category_id).category
	@micropost.content = request.remote_ip
	if @micropost.save
	  flash[:success] = "Micropost created, yo!"
	  redirect_to root_path
	else
	  @feed_items = []
	  render 'static_pages/home'
	end
  end

  def destroy
    @micropost.destroy
	redirect_back_or root_path
  end
 
  private
  
    def correct_user
	  @micropost = current_user.microposts.find_by_id(params[:id])
	  redirect_to root_path if @micropost.nil?
	end
end
