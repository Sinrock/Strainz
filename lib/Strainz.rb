module Strainz
  class Error < StandardError; end
  #def initialize("")
  #end

  def call
    puts "Test Passed!"
    #input = ""

    #while input != "exit"
    #  puts "Welcome to Strainz!"
    #  puts "To list all of your strain, enter 'list songs'."
    #  puts "To quit, type 'exit'."
    #  puts "What would you like to do?"
#
    #  input = gets.strip
  end
#      case input
#      when "list songs"
#        list_songs
#      when "list artists"
#        list_artists
#      when "list genres"
#        list_genres
#      when "list artist"
#        list_songs_by_artist
#      when "list genre"
#        list_songs_by_genre
#      when "play song"
#        play_song
#      end
#    end
#  end

 # def list_songs
 #   Song.all.sort{ |a, b| a.name <=> b.name }.each.with_index(1) do |s, i|
 #     puts "#{i}. #{s.artist.name} - #{s.name} - #{s.genre.name}"
 #   end
 # end#

 # def list_artists
 #   Artist.all.sort{ |a, b| a.name <=> b.name }.each.with_index(1) do |a, i|
 #     puts "#{i}. #{a.name}"
 #   end
 # end

 # def list_genres
 #   Genre.all.sort{ |a, b| a.name <=> b.name }.each.with_index(1) do |g, i|
 #     puts "#{i}. #{g.name}"
 #   end
 # end

end