#!/usr/bin/env ruby


puts "Enter your name Player 1: "
player1 = gets.chomp

puts "Enter your name Player 2: "
player2 = gets.chomp

# While game end

board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

def return_board(board)
    
    puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
    puts "--------------"
    puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
    puts "--------------"
    puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
    puts "\n"
end
      

return_board(board)

puts "#{player1} pick a number from 1 to 9: "
# show the board without selection
return_board(board)
input1 = gets.chomp
board[input1.to_i-1] = 'X'
puts "#{player1} has selected the #{input1} position"
return_board(board)
# show the board with selection

puts "#{player2} pick a number from 1 to 9: "
# show the board without selection
return_board(board)
input2 = gets.chomp
board[input2.to_i-1] = '0'
puts "#{player2} has selected the #{input2} position"
return_board(board)

# show the board with selection
winner = player1
#end

puts "#{player1} wins the game"