module Strainz
  class CLI
    def run
      @data_hash = StrainImporter.new("https://strainapi.evanbusse.com/rvxnT8j/strains/search/all").parse_json
      Strain.create_all_strains(@data_hash)
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
            users_choice = Strain.find_by_name(@user_input)
            if users_choice != nil
              then
            puts "Strain Name: ".magenta + users_choice.name.green
            puts "Strain Id: ".magenta + users_choice.id.to_s.green
            puts "Strain Race: ".magenta + users_choice.race.green
            puts "Strain Effects: ".magenta + users_choice.effects.to_s.green
            puts "Strain Flavors: ".magenta + users_choice.flavors.to_s.green
            else 
              puts "No strains with that name found in the database!".red
            end

            #need to find the selected strain based on user input find by name method return 1 strain
            #write if statement if found, print, if not return error message strain not found
          end
        end
    end
  end