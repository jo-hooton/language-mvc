class PhrasesController < ApplicationController
    def show
        @phrase = Phrase.find(params[:id])
    end

    def index
    end

    def create
        @phrase = Phrase.new(phrase_params(:english_text, :language_text, :user_id, :language_id))
        @phrase.save
        redirect_to phrase_path(@phrase)
    end

    def update
        @phrase = Phrase.find(params[:id])
        @phrase.update(phrase_params(:english_text, :language_text, :language_id))
        redirect_to phrase_path(@phrase)
    end

    private

    def phrase_params(*args)
        params.require(:post).permit(*args)
    end

end
