class V1::ChatController < ApplicationController

  def index
    @step = Step.where(opening: true).sample
    # puts @step.as_json(include: :answers)
    render json: @step.as_json
  end

  def answer
  end

end
