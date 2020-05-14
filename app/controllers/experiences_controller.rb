class ExperiencesController < ApplicationController

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
    end

    def show
        @experience = Experience.find_by(id: params[:id])
    end

    private

    def experience_params
        params.require(:experience).permit(:notes, :rating, :medium_id)
    end
end
