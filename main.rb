#!/usr/bin/env ruby

require_relative './app'
require_relative './classes/logic'
require_relative './classes/appp'

class Main
  def initialize
    @app2 = Appp.new
    @app1 = App.new
    @app = Logic.new
  end

  def excute
    puts 'Welcome to Catalog of my things App!'
    @app2.load
    puts display_list
  end

  def list_items1(choices)
    case choices
    when 1
      @app.list_books
    when 2
      @app2.list_all_albums
    when 3
      @app1.list_games
    when 4
      @app2.list_all_genres
    when 5
      @app.list_labels
    end
  end

  def list_items2(choices)
    case choices
    when 6
      @app1.list_authors
    when 7
      @app1.add_game
    when 8
      @app2.add_a_music_album
    when 9
      @app.add_book
    when 0
      @app2.quit_app
    end
  end

  def display_list
    while true
      puts ['',
            "\n Please choose an choices by entering a number from below:",
            '1 - List all books',
            '2 - List all musics albums',
            '3 - List all games',
            '4 - List all genres',
            '5 - List all labels',
            '6 - List all authors',
            '7 - Add a game',
            '8 - Add a music',
            '9 - Add a book',
            '0 - Exit']

      choices = gets.chomp.to_i
      list_items1(choices)
      list_items2(choices)
    end

    return puts 'Please enter a valid input' unless (0...10).include? choices
  end
end
main = Main.new
main.excute
