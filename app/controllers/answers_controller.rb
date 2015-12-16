class AnswersController < ApplicationController

  def index

    @question = Question.find(params[:question_id])
    @answers = @question.answers

  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params, question_id: @question.id)
    @answer.question = @question

    if @answer.save
      redirect_to question_path(@question)
    else
      flash[:notice] = "Your answer is weak."
      redirect_to question_path(@question)
    end
  end



  private

  def answer_params
    params.require(:answer).permit(:description)
  end
end
