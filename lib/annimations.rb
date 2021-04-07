module Annimation
    def self.welcome_screen()
      puts `clear`
      puts
      puts ("                           _    ".colorize(:light_cyan))
      sleep 0.2
      puts ("                          | |  ".colorize(:light_cyan))
      sleep 0.2
      puts (" _ __ ___   ___   ___   __| |   ".colorize(:light_cyan))
      sleep 0.2
      puts ("| '_ ` _ \\ / _ \\ / _ \\ / _` |  ".colorize(:light_cyan))
      sleep 0.2
      puts ("| | | | | | (_) | (_) | (_| |".colorize(:light_cyan)) 
      sleep 0.2
      puts ("|_| |_| |_|\\___/ \\___/ \\__,_| ".colorize(:light_cyan))
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
      message = "Welcome to mood"
  
      words = message.split(' ')
  
      words.each { |word|
        letters = word.split('')
        
        letters.each { |letter|
          print(letter.colorize(
            case word
            when "Welcome"
              :red
            when "mood.IO"
              :light_cyan
            
            else
              :default
            end
          ))
          sleep 0.01
        }
        print ' '
      }
  
    end
  
    def self.display_title_options()
      options = ["Press 1 to Log In", "Press 2 to Sign Up", "Press 3 to Exit"]
  
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
                  :light_cyan
                when "In"
                  :light_cyan
                when "Sign"
                  :light_cyan
                when "Up"
                  :light_cyan
                when "Exit"
                  :light_cyan
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
      puts("Thanks for using".colorize(:red))
      puts ("                           _     ".colorize(:yellow))
      sleep 0.2
      puts ("                          | |    ".colorize(:light_green))
      sleep 0.2
      puts (" _ __ ___   ___   ___   __| |    ".colorize(:blue))
      sleep 0.2
      puts ("| '_ ` _ \\ / _ \\ / _ \\ /  | | ".colorize(:light_cyan))
      sleep 0.2
      puts ("| | | | | | (_) | (_) | (_| | ".colorize(:pink)) 
      sleep 0.2
      puts ("|_| |_| |_|\\___/ \\___/ \\__|_| ".colorize(:light_cyan))
      puts
      
      exit
    end
  end