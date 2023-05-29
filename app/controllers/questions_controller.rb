STOP_MESSAGE = "I am going to work right now!"

class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question == STOP_MESSAGE || @question == STOP_MESSAGE.upcase
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
