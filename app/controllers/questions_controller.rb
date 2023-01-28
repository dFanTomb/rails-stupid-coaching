class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]

    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.to_s.include?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end

# ask = action in the routes.rb
