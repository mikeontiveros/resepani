class ChildrenController < ApplicationController

    def index
    end

    def new
      @child = Child.new
    end

    def create
        @child = Child.new(params.require(:child).permit(:name, :gender, :dob))
        @child.user_id = current_user.id

        if @child.save
            redirect_to children_path
        else
            render :new
        end
    end

    def show
      @child = Child.find(params[:id])
    end

    def destroy
        @child = Child.find(params[:id])
        @child.destroy
        redirect_to children_path
    end

end
