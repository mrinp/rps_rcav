class GamesController < ApplicationController

  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    # the "@" symbol creates a variable that has a life that lives longer than the method and extends into the html

    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "won!"
    else
      @outcome = "lost :("
    end

    render ("games/play_rock.html.erb")  #erb = embedded ruby code
  end

  def play_scissors

    if @computer_move == "rock"
      @outcome = "lost :("
    elsif @computer_move == "scissors"
      @outcome = "tied"
    else
      @outcome = "won!"
    end

    render ("games/play_scissors.html.erb")
  end

  def play_paper

    if @computer_move == "rock"
      @outcome = "won!"
    elsif @computer_move == "scissors"
      @outcome = "lost :("
    else
      @outcome = "tied"
    end

    render ("games/play_paper.html.erb")
  end

end
