class SessionsController < ApplicationController

    def welcome
        if logged_in?
            redirect_to user_path(current_user)
        end
    end

    def new
    end

    def create
        if params[:provider] == 'google_oauth2'
            @user = User.find_or_create_by(username: auth[:info][:email]) do |u|
                u.email = auth[:info][:email]
                u.password = SecureRandom.hex
            end
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            @user = User.find_by(username: params[:user][:username])
            if @user && @user.authenticate(params[:user][:password])
                session[:user_id] = @user.id
                redirect_to user_path(@user)
            else
                flash[:error] = "Login failed. Please try again."
                redirect_to login_path
            end
        end
    end

    def destroy
        session.delete(:user_id)
        redirect_to root_path
    end

    private
    def auth 
        request.env['omniauth.auth']
    end

end
