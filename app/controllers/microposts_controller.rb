class MicropostsController < ApplicationController
	before_action :signed_in_user,	only: [:create, :destroy]
	before_action :correct_user, 	only: :destroy

	def index
	end


	def create
		@micropost = current_user.microposts.build(micropost_params)

		if @micropost.save
			flash[:success] = "Micropost created!"
			redirect_to root_url
		else
			@feed_items = []
			redirect_to root_url
			flash[:danger] = "Oops! Micropost not saved!"
		end
	end

	def edit
		@micropost = current_user.microposts.find(params[:id])
	end

	def update
		@micropost = current_user.microposts.find(params[:id])
		if @micropost.update_attributes(micropost_param)
			flash[:success] = "Micropost updated!"
			redirect_to @user.micropost
		end
	end

	def destroy
		@micropost.destroy
		flash[:success] = "Micropost deleted!"
		redirect_to root_url
	end


	private

	def micropost_params
		params.require(:micropost).permit(:id, :content, :image)
	end

	def correct_user
		@micropost = current_user.microposts.find_by(id: params[:id])
		redirect_to root_url if @micropost.nil?
	end

end