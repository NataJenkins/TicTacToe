#!/usr/bin/env ruby
require 'artii'
require 'colorize'

title = Artii::Base.new

puts title.asciify('Tic Tac Toe').colorize(:red)

puts "\n"

puts 'Enter your name Player 1: '.colorize(:green)
player1 = gets.chomp

puts 'Enter your name Player 2: '.colorize(:green)
player2 = gets.chomp


gameOn = true
# While game end
while gameOn
board = %w[1 2 3 4 5 6 7 8 9]

def return_board(board)
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |".colorize(:light_blue)
  puts '--------------'.colorize(:light_blue)
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |".colorize(:light_blue)
  puts '--------------'.colorize(:light_blue)
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |".colorize(:light_blue)
  puts "\n"
end

return_board(board)

puts "#{player1} pick a number from 1 to 9: ".colorize(:green)
# show the board without selection
return_board(board)
input1 = gets.chomp
board[input1.to_i - 1] = 'X'
puts "#{player1} has selected the #{input1} position".colorize(:green)
return_board(board)
# show the board with selection

puts "#{player2} pick a number from 1 to 9: ".colorize(:green)
# show the board without selection
return_board(board)
input2 = gets.chomp
board[input2.to_i - 1] = '0'
puts "#{player2} has selected the #{input2} position".colorize(:green)
return_board(board)

# show the board with selection
winner = player1
# end
gameOn = false
end

puts "🎉 #{winner} wins the game 🎉".colorize(:green)
