class ExperiencesController < ApplicationController

    before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_experience, only: [:show, :edit, :update, :destroy]
    helper_method :authorized_to_edit

    def new
        @medium = Medium.find_by(id: params[:medium_id])
        if @medium
            @experience = @medium.experiences.build
        else
            redirect_to media_path
        end
    end

    def create
        @experience = current_user.experiences.build(experience_params)
        if @experience.save
            redirect_to experience_path(@experience)
        else
            render :new
        end
    end

    def index
        if params[:medium_id] && @medium = Medium.find_by(id: params[:medium_id])
            @experiences = @medium.experiences
        else
            @experiences = Experience.all 
        end
    end

    def show
    end

    def edit
        @medium = Medium.find_by(id: params[:medium_id])
        unless @medium && @experience && authorized_to_edit
            redirect_to media_path
        end
    end

    def update
        redirect_to media_path unless authorized_to_edit
        if @experience.update(experience_params)
            redirect_to experience_path(@experience)
        else
            render :edit
        end
    end

    def destroy
        redirect_to media_path unless authorized_to_edit
        @experience.destroy
        redirect_to user_path(current_user)
    end

    private

    def experience_params
        params.require(:experience).permit(:notes, :rating, :medium_id)
    end

    def authorized_to_edit
        current_user == @experience.user 
    end

    def set_experience
        @experience = Experience.find_by(id: params[:id])
    end
    
end
