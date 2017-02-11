class TicTac

  def initialize
    play
  end

  def play
    print "Do you want to play my game? : "
    @play_game = gets.chomp.downcase
    check_play
  end

  def play_again
    print "do you want to play again? : "
    @play_game = gets.chomp.downcase
    check_play
  end

  def check_play
    if @play_game == "yes"
      reset
      turn
    elsif @play_game == "no"
      puts "Ok goodbye"
      exit
    else
      puts "Thats not yes or no"
      play
    end
  end

  def turn
    puts ""
    puts ""
    puts ""
    puts "It is player #{@turn}'s turn"
    puts ""
    board
  end

  def reset
    @turn = 1
    @one1 = " "
    @one2 = " "
    @one3 = " "
    @two1 = " "
    @two2 = " "
    @two3 = " "
    @three1 = " "
    @three2 = " "
    @three3 = " "
    @list = []
    @player1_list = []
    @player2_list =[]
  end

  def board
    puts "        COLUMN"
    puts "       1   2   3 "
    puts "    a  #{@one1} | #{@one2} | #{@one3} "
    puts "      ---+---+---"
    puts "ROW b  #{@two1} | #{@two2} | #{@two3} "
    puts "      ---+---+---"
    puts "    c  #{@three1} | #{@three2} | #{@three3}"
    win
  end

  def player
    puts ""
    print "Player #{@turn} what row do you want : "
    @row = gets.chomp.downcase
    print "What column do you you want : "
    @column = gets.chomp.to_i
    check_row
  end

  def check_row
    if @row == "a"
      check_column
    elsif @row == "b"
      check_column
    elsif @row == "c"
      check_column
    else
      puts "Thats not A, B, or C"
      puts "Try again"
      player
    end
  end

  def check_column
    if @column == 1
      check_on_board
    elsif @column == 2
      check_on_board
    elsif @column == 3
      check_on_board
    else
      puts "The column you put is not 1 through 3"
      puts "Try again"
      player
    end
  end

  def check_on_board
    @spot = "#{@row},#{@column}"
    if @list.include?(@spot)
      puts ""
      puts "Thats already has been done"
      puts "Try again"
      player
    else
      @list.push(@spot)
      if @turn == 1
        @player1_list.push(@spot)
        turn_player
      elsif @turn == 2
        @player2_list.push(@spot)
        turn_player
      end
    end
  end

  def turn_player
    if @turn == 1
      @ox = "O"
      play_player
    elsif @turn == 2
      @ox = "X"
      play_player
    end
  end

  def play_player
    if @spot == "a,1"
      @one1 = @ox
      change_turn
    elsif @spot == "a,2"
      @one2 = @ox
      change_turn
    elsif @spot == "a,3"
      @one3 = @ox
      change_turn
    elsif @spot == "b,1"
      @two1 = @ox
      change_turn
    elsif @spot == "b,2"
      @two2 = @ox
      change_turn
    elsif @spot == "b,3"
      @two3 = @ox
      change_turn
    elsif @spot == "c,1"
      @three1 = @ox
      change_turn
    elsif @spot == "c,2"
      @three2 = @ox
      change_turn
    elsif @spot == "c,3"
      @three3 = @ox
      change_turn
    end
  end

  def change_turn
    if @turn == 1
      @turn = 2
      turn
    elsif @turn == 2
      @turn = 1
      turn
    end
  end

  def win
    if @player1_list.include?("a,1") and @player1_list.include?("a,2") and @player1_list.include?("a,3")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("b,1") and @player1_list.include?("b,2") and @player1_list.include?("b,3")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("c,1") and @player1_list.include?("c,2") and @player1_list.include?("c,3")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("a,1") and @player1_list.include?("b,1") and @player1_list.include?("c,1")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("a,2") and @player1_list.include?("b,2") and @player1_list.include?("c,2")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("a,3") and @player1_list.include?("b,3") and @player1_list.include?("c,3")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("a,1") and @player1_list.include?("b,2") and @player1_list.include?("c,3")
      puts "Player 1 wins!"
      play_again
    elsif @player1_list.include?("a,3") and @player1_list.include?("b,2") and @player1_list.include?("c,1")
      puts "Player 1 wins!"
      play_again
    elsif @player2_list.include?("a,1") and @player2_list.include?("a,2") and @player2_list.include?("a,3")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("b,1") and @player2_list.include?("b,2") and @player2_list.include?("b,3")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("c,1") and @player2_list.include?("c,2") and @player2_list.include?("c,3")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("a,1") and @player2_list.include?("b,1") and @player2_list.include?("c,1")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("a,2") and @player2_list.include?("b,2") and @player2_list.include?("c,2")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("a,3") and @player2_list.include?("b,3") and @player2_list.include?("c,3")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("a,1") and @player2_list.include?("b,2") and @player2_list.include?("c,3")
      puts "Player 2 wins!"
      play_again
    elsif @player2_list.include?("a,3") and @player2_list.include?("b,2") and @player2_list.include?("c,1")
      puts "Player 2 wins!"
      play_again
    elsif @list.include?("a,1") and @list.include?("a,2") and @list.include?("a,3") and @list.include?("b,1") and @list.include?("b,2") and @list.include?("b,3") and @list.include?("c,1") and @list.include?("c,2") and @list.include?("c,3")
      puts "It was a draw"
      play_again
    else
      player
    end
  end
end
game = TicTac.new
