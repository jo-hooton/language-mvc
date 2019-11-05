class LanguagesController < ApplicationController
    def show
    end

    def index
    end

    def create
        @language = Language.new(language_params)
        @language.save
        redirect_to language_path(@language)
    end

    def update
        @language = Language.find(params[:id])
        @language.update(language_params)
        redirect_to language_path(@language)
    end

    private

    def language_params
        params.require(:language).permit(:name, :image)
    end

end


