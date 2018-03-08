class QuizzesController < ApplicationController
  def index
    @user = current_employer
    @quizzes = Quiz.where({id: @user.id})
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def new
    @employer = Employer.find(params[:employer_id])
    @quiz = Quiz.new
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end
  
  def create
    @quiz = Quiz.new
    @quiz.title = params[:quiz][:title]
    @quiz.category = params[:quiz][:category]
    @quiz.employer = current_user
  end
  
  def update
    @quiz = Quiz.find(params[:id])
  end
end