class ResponsesController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @response = @question.responses.new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = @question.responses.new(response_params)
    if @response.save
      redirect_to question_path(@response.question)
    else
      render :new
    end
  end

  private
  def response_params
    params.require(:response).permit(:response, :name)
  end
end
