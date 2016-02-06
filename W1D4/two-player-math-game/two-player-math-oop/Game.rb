class Game

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @current_player = @player_one
  end

  def switch_players
    @current_player = @current_player.object_id == @player_one.object_id ? @player_two : @player_one
  end

  def play
    #--------------- Gameplay ---------------------#
    puts
    puts "----- Welcome to Two Player Math -----".blue
    while true
      if @player_one.lives > 0 && @player_two.lives > 0
        puts
        puts @current_player.name + ": " +  QuestionGenerator.generate_question
        QuestionGenerator.verify_answer(@current_player)
        log_player_scores
        switch_players
      else
        puts
        puts "----- Game over -----".blue
        stop
        break
      end
    end
  end

  def stop
    log_winner
  end

  def log_winner
    if @player_one.lives == 0
      puts "Player 2 wins!"
      puts @player_one.lives
    elsif @player_two.lives == 0
      puts "Player 1 wins!"
      puts @player_two.lives
    end
  end

  def log_player_scores
    puts "----- Score board -----".blue
    puts "Player 1: #{@player_one.lives}"
    puts "Player 2: #{@player_two.lives}"
  end
end
