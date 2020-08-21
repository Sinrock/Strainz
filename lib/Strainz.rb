module Strainz
  class CLI
    def run
      system("clear")
      @user_input = nil
      welcome
      until @user_input == "exit"
        main_menu
      end
    end
    def welcome
      puts "Welcome to Strainz!".green
    end
      def main_menu
        puts "Search for the attributes of any marijuana strain!".light_blue
        puts "What's the name of the strain you'd like info on?(type exit to quit the application".light_blue
        strain_create
      end
        def strain_create
          @user_input = gets.chomp.downcase.split.map(&:capitalize).join(' ')
          if @user_input.downcase == "exit"
            exit
          else
            puts "Gathering the data you requested...".yellow
            query = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
          puts testing = Strain.new(query, "#{@user_input}").strainprint
          end
        end
    end
  end