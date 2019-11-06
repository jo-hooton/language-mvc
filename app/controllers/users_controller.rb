class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(params[user_params])
        @user.save
        redirect_to user_path(@user)
    end

    def update
        @user= User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    private

    def user_params
        params.require(:user, :name).permit(:image)
    end


end
