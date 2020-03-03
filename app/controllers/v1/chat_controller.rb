class V1::ChatController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    step = Step.where(opening: true).sample
    render json: step.as_json
  end

  def answer
    answer = Answer.find(params[:id])
    step = answer.steps.sample
    render json: step.as_json
  end

end
