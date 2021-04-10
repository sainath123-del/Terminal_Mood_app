module Annimation
    def self.welcome_screen()
      puts `clear`
      puts
      puts ("                           _    ".colorize(:orange))
      sleep 0.2
      puts ("                          | |  ".colorize(:orange))
      sleep 0.2
      puts (" _ __ ___   ___   ___   __| |   ".colorize(:white))
      sleep 0.2
      puts ("| '_ ` _ \\ / _ \\ / _ \\ / _` |  ".colorize(:white))
      sleep 0.2
      puts ("| | | | | | (_) | (_) | (_| |".colorize(:green)) 
      sleep 0.2
      puts ("|_| |_| |_|\\___/ \\___/ \\__,_| ".colorize(:green))
      sleep 0.2
      2.times { puts } 
      sleep 0.5
      welcome_function()
      2.times { puts }
      sleep 1.5
      display_title_options
      puts
      sleep 1
    end
  
    def self.welcome_function()
      message = "Welcome to check your MOOD made by Sainath Biradar.!"
  
      words = message.split(' ')
  
      words.each { |word|
        letters = word.split('')
        
        letters.each { |letter|
          print(letter.colorize(
            case word
            when "Welcome"
              :red
            when "MOOD"
              :blue
            when "Sainath"
              :blue
            when "Biradar.!"
              :blue
            else
              :default
            end
          ))
          sleep 0.00
        }
        print ' '
      }
  
    end
  
    def self.display_title_options()
      options = ["Press 1 to Log In", "Press 2 to Register", "Press 3 to Exit"]
  
      words = []
  
      options.each_with_index { |option|
        words << option.split(' ')
      }
  
        words.each { |word_arr|
          word_arr.each { |word|
            letters = word.split('')
            letters.each { |letter|
              print(letter.colorize(
                case word
                when "Press"
                  :red
                when "1"
                  :light_green
                when "2"
                  :light_green
                when "3"
                  :light_green
                when "Log"
                  :blue
                when "In"
                  :blue
                when "Register"
                  :blue
                
                when "Exit"
                  :blue
                else
                  :default
                end
              ))
              sleep 0.01
            }
            sleep 0.02
            print(' ')
          }
          puts
        }
            
    end
  
    def self.shutdown
      puts `clear`
      puts("Thanks for checking your mood. ".colorize(:yellow))
      
      exit
    end
  end