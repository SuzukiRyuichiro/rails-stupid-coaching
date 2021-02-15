class PagesController < ApplicationController
  def about
  end

  def ask
  end

  def home
  end

  def answer
    @coach_answer = ""
    if params[:question] == 'I am going to work'
      @coach_answer = 'good'
    elsif params[:question].end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
