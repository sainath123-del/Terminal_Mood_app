require 'csv'
require 'pry'
require 'date'
require 'digest'
require 'colorize'

require './database/account'
require './lib/annimations'


class Journal

    attr_accessor(:journal_entries_arr, :mood_list, :current_account)
    def initialize
      @journal_entries_arr = [ ]
      @mood_list = []
      @current_account = nil
    end
  
    def title
      Annimation::welcome_screen()
  
      while true 
        print("Selection: ")
        input = gets.strip
  
        case input
        when "1"
          log_in_screen
        when "2"
          register_screen
        when "3"
          Animation::shutdown()
        else
          puts("Please enter a valid option!".colorize(:red))
        end
      end
    end
end