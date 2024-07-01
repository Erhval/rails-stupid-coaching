class QuestionsController < ApplicationController
  def answer
    @question = params[:question] # Récupère la valeur du paramètre 'question'
    @answer = ask (@question)
  end

  private

  def ask(question)
    if question.blank?
      'Please ask a question.'
    elsif question == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end
end
