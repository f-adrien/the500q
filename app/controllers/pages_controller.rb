class PagesController < ApplicationController

  def home
    @question = Question.all.random.first
  end

  def load_question
    @question = Question.all.random.first
  end

  private

end
