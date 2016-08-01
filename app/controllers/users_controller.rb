class UsersController < ApplicationController

    def index
        if params[:search].present?
            @search = params[:search]
            @radius = params[:radius]
            @users = User.near(params[:search], params[:radius])
        else
            @search = current_user.address
            @radius = 10
            @users = User.near(current_user.address, 10)
        end
    end

    def show
        @user = User.find(params[:id])
    end

    def edit
#        @user = User.find(params[:id])
    end

    def update
        if current_user.update_attributes(params.require(:user).permit(:first_name, :address, :latitude, :longitude, :role))
            redirect_to user_path(current_user)
        else
            render :edit
        end
    end

end
