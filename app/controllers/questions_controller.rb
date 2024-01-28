class QuestionsController < ApplicationController
  def ask
  end
  def answer
    if params[:question].present?
      @question = params[:question]
    #   if @question == "I'am going to work" || @question == "I'am going to work".downcase
    #     @answer = "Great!"
    #   elsif @question == "I am going to work" || @question == "I am going to work".downcase
    #     @answer = "Great!"
    #   elsif @question.end_with?("?")
    #     @answer = "Silly question, get dressed and go to work!"
    #   else
    #     @answer = "I don't care, get dressed and go to work!"
    #   end
    # else
    #   @answer = "It looks like you didn't ask anything."

    case @question.downcase
    when "i am going to work", "i'm going to work"
      @answer = "Great!"
    when /\?$/
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    else
      @answer = "It looks like you didn't ask anything."
    end
  end
end
