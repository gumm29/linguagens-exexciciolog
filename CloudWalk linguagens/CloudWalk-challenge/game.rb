require 'json'
require './methods.rb'

@json = {}

game = split_log_game()

game.times do |i|
    unless i == 0
        game_block = split_line(i)
        new_json = game_name(i)

        @players_number = []
        @players_name = []
        @player_kills = {}
        @kills_by_means = {}
        @weapons = []
        @total_kills = 0

        game_logic_filters(game_block)
        json_structure(new_json)
    end
end

create_json_file()