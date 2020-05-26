class UsersController < ApplicationController

    before_action :set_user, only: [:favorites, :show]
    helper_method :my_profile?

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
        if params[:favorites] == "See my favorite media!"
           redirect_to "/users/#{params[:id]}/favorites"
        else
            @media = Medium.user_medium(params[:id])
        end
        redirect_to '/' if !@user
    end

    def favorites
        @media = Medium.user_favorites(params[:id])
        render 'show'
    end

    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def my_profile?
        @user == current_user
    end

end
