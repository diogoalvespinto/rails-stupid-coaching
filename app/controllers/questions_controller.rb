class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''

    if params[:question][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] != 'I am going to work right now!'
      @answer = "I don't care, get dressed and go to work!"
    else
      @answer = 'Great!'
    end
  end
end
