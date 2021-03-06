class Admin::UsersController < ApplicationController
	
	before_action :admin_user,		only: [:index, :edit, :update, :destroy]

	def index
		@users = User.paginate(page: params[:page])
	end

	def show
		@user = User.find(params[:id])
		@microposts = @user.microposts.paginate(page: params[:page])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user			
			flash[:success] = "User added!"
			redirect_to @user
		else
			render 'new'
		end
	end	

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:success] = "Profile updated!"

		else
			render 'edit'
		end
	end

	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User deleted."
		
	end

	
	private

	def user_params
		params.require(:user).permit(:name, :email, :profile)
	end

	# Before filters

	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_url) unless current_user?(@user)
	end

	def admin_user
		redirect_to(root_url) unless current_user.admin?
	end


end