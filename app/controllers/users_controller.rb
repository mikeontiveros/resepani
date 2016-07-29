class UsersController < ApplicationController

    def show
#        @user = User.find(params[:id])
    end

    def edit
#        @user = User.find(params[:id])
    end

    def update
        if current_user.update_attributes(params.require(:user).permit(:name, :latitude, :longitude, :role))
            redirect_to user_path(current_user)
        else
            render :edit
        end
    end

end
