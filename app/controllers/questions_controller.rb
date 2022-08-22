class QuestionsController < ApplicationController
  def ask
  end

  def answer
    exit_message = 'I am going to work'
    if params[:answer].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:answer] == exit_message
      @answer = 'Great!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
