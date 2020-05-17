class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        if params[:favorites] == "See my favorite media!"
           redirect_to "/users/#{params[:id]}/favorites"
        else
            @media = Medium.user_medium(params[:id])
        end
        redirect_to '/' if !@user
    end

    def favorites
        @user = User.find_by(id: params[:id])
        @media = Medium.user_favorites(params[:id])
        render 'show'
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
