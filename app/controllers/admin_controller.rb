class AdminController < ApplicationController

before_action :authenticate_user!

  def show
    @questions = Question.all
  end

  def import
    Question.import(params[:file])
    redirect_to admin_path
  end
end
