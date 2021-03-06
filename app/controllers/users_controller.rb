class UsersController < ApplicationController
    def show
    end

    def create
        @user = User.new(params(user_params))
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
        params.require(:user).permit(:name, :image)
    end


end
