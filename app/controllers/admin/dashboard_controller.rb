class Admin::DashboardController < ApplicationController
 before_action :admin_user, only: [:index, :edit, :update, :destroy]

def index
end

  private

  	def admin_user
		redirect_to(root_url) unless current_user.admin?
	end

end
