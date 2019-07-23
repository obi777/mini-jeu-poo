
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"
puts "Donne un prénom à ton personnage"
print "> "
@player_name = gets.chomp
# puts "Donne un nombre de bots"
# print "> "
# @bots = gets.chomp.to_i
game = Game.new("#{@player_name}")
tour = 0

puts "Passons à la phase d'attaque :"
while game.is_still_ongoing?
  tour += 1
  puts "\n"
  puts "------Tour #{tour}------"
  puts "\n"
  game.new_players_in_sight
  game.show_player
  game.menu
  game.menu_choice(gets.chomp)
  game.enemies_attack
end
game.end