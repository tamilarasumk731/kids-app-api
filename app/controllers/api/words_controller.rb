module Api
  class WordsController < ApplicationController
    

    def getResult
      word = params[:alphabet]
      @output = Word.find_by(name: word.downcase)
      if @output.present?
        render json: {success: true, result:{alphabet: @output.name, word: @output.result, image_url: @output.image_url}}, status: :ok and return
      else
        render json: {success: false, message: "Not found"}, status: :ok and return
      end
    end
    
    private
    def word_params
      params.require(:input).permit(:word)
    end
  end
end