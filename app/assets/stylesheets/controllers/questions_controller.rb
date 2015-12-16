require 'pry'

class QuestionsController < ApplicationController
  def index
    @questions = []
    @questions_all = Question.all
    @questions_all.each do |q|
      @questions.unshift q
    end
  end

  def show
    @question = Question.find(params[:id])
    @answers = Answer.where(question_id: @question.id)
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      flash[:notice] = "Your question is weak."
      render action: 'new'
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to question_path(@question)
    else
      render 'edit'
    end
  end

  def destroy
    question = Question.find(params[:id])

    question.destroy

    redirect_to questions_path
  end


  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
