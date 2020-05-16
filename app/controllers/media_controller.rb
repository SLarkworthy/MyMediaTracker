class MediaController < ApplicationController

    def new
        @medium = Medium.new
    end

    def create
        @medium = Medium.new(medium_params)
        if @medium.save 
            redirect_to media_path
        else
            render :new
        end
    end

    def index
        @media = Medium.alphabetical
    end

    private

    def medium_params
        params.require(:medium).permit(:name, :creators, :category_id)
    end

end
