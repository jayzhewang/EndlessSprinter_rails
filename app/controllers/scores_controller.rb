class ScoresController < ApplicationController
  def index
    @scores = Score.order(score: :desc).limit(10)
    render :index
  end

  def create
    debugger;
    @score = Score.new(score_params)
    if @score.save
      render json: @score
    else
      render json: @score.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def score_params
    params.permit(:name, :score)
  end
end
