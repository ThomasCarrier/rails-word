require 'longest_word'

class WordsController < ApplicationController
  def game
    @grid = generate_grid(30)
    @start_time = Time.now
  end

  def score
    raise
    start_time = params[:start_time].to_datetime
    grid = params[:grid].split("")
    @attempt = params[:attempt]
    end_time = Time.now
    result = run_game(@attempt, grid, start_time, end_time)
    @time = result[:time]
    @translation = result[:translation]
    @score = result[:score]
    @message = result[:message]
  end
end
