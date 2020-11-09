#!/usr/bin/env ruby
require 'artii'
require 'colorize'
require './lib/logic'

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

until grid.winner

  puts grid.board_display

  puts "#{player1.name} pick a number from 1 to 9: ".colorize(:green)

  puts grid.board_display
  loop do
    input1 = gets.chomp.to_i
    if grid.check_valid?(input1 - 1)
      grid.update_board(player1, input1 - 1)
      break
    else
      puts "#{input1} is already occupied"
      puts "#{player1.name} pick a number from 1 to 9: ".colorize(:green)
    end
  end

  puts "#{player1.name} has selected the #{input1} position".colorize(:green)
  puts grid.board_display

  break if grid.winner?(player1, player2)

  puts "#{player2.name} pick a number from 1 to 9: ".colorize(:green)
  puts grid.board_display
  loop do
    input2 = gets.chomp.to_i
    if grid.check_valid?(input2 - 1)
      grid.update_board(player2, input2 - 1)
      break
    else
      puts "#{input2} is already occupied"
      puts "#{player2.name} pick a number from 1 to 9: ".colorize(:green)
    end
  end
  puts "#{player2.name} has selected the #{input2} position".colorize(:green)
  puts grid.board_display

  break if grid.winner?(player1, player2)
end

puts "🎉 #{grid.winner.name} wins the game 🎉".colorize(:green) unless grid.winner == 'draw'
puts 'Game is draw' if grid.winner == 'draw'
