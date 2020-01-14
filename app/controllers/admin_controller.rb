class AdminController < ApplicationController

before_action :authenticate_user!
before_action :is_admin?

  def show
    @questions = Question.all
  end

  def import
    Question.import(params[:file])
    redirect_to admin_path
  end

  private

  def is_admin?
    redirect_to root_path unless current_user.is_admin
  end

end
