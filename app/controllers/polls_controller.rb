class PollsController < ApplicationController
  def index
    @polls = Poll.all
    render json: @polls
  end

  def show
    @poll = Poll.find(params[:id])
    render json: @poll
  end

  def create
    @poll = Poll.new(poll_params)

    if @poll.valid?
      @poll.save!
      render json: @poll
    else
      render json: { errors: @poll.errors.full_messages }
    end

  end

  private

  def poll_params
    params.require(:poll).permit(:title)
  end


end