class ScoresController < ApplicationController
  def index
    @scores = Score.order(score: :desc).limit(10)
    render :index
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      render json: @user, status: ok
    else
      render json: @score
      # render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def score_params
    params.require(:score).permit(:name, :score)
  end
end
