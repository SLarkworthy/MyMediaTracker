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
        
    end

    def index
    end

    private

    def experience_params
        params.require(:experience).permit(:notes, :rating, :medium_id)
    end
end
