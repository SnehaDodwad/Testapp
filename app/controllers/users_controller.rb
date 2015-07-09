class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		end
	end

	def edit 
			@user = User.find(params[:id])
	end

	def index
		
	end

	private
		def user_params
			params.require(:user).permit(:email, :password)
		end

	end