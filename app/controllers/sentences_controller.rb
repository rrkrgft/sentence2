class SentencesController < ApplicationController
  def index
    @sentences = Sentence.all
  end

  def new
    @sentence = Sentence.new
  end

  def create
    Sentence.create(sentence_params)
    redirect_to new_sentence_path
  end

  def show
    @sentence = Sentence.find(params[:id])
  end

  private

  def sentence_params
    params.require(:sentence).permit(:content)
  end

end
