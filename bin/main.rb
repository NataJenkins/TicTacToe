#!/usr/bin/env ruby
require 'artii'
require 'colorize'
require './lib/grid'
require './lib/player'

title = Artii::Base.new

puts title.asciify('Tic Tac Toe').colorize(:red)

puts "\n"

puts 'Enter your name Player 1: '.colorize(:green)
player1 = gets.chomp
player1 = Player.new(player1, 'X')

puts 'Enter your name Player 2: '.colorize(:green)
player2 = gets.chomp
player2 = Player.new(player2, 'O')

grid = Grid.new

def user_turn(player, grid)
  puts grid.board_display
  puts "#{player.name} pick a number from 1 to 9: ".colorize(:green)

  loop do
    input = gets.chomp.to_i
    if grid.check_valid?(input - 1)
      grid.update_board(player, input - 1)
      puts "#{player.name} has selected the #{input} position".colorize(:green)
      puts grid.board_display
      break
    else
      puts "#{input} is already occupied or wrong input"
      puts "#{player.name} pick a number from 1 to 9: ".colorize(:green)
    end
  end
end

until grid.winner
  user_turn(player1, grid)
  break if grid.winner?(player1, player2)

  puts "\n"
  user_turn(player2, grid)
  break if grid.winner?(player1, player2)

  puts "\n"
end

puts "🎉 #{grid.winner.name} wins the game 🎉".colorize(:green) unless grid.winner == 'draw'
puts 'Game is draw' if grid.winner == 'draw'
