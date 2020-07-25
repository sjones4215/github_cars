require_relative 'newcarform'
require_relative 'car_inv'

class Menu
    attr_accessor :inv, :value, :sub
    def initialize
        @inv = Car_Inv.new
    end

    def start
        puts ""
        puts "Hello what can we help you with"
        puts ""
        puts "1: Press 1 for add new car."
        puts ""
        puts "2: Press 2 for current inventory."
        puts ""
        puts "3: Press 3 to search for car."
        puts ""
        puts "4: Press 4 to remove car from current inventory"
        puts ""
        puts "5: Press 5 to sell car from current inventory"
        puts ""
        puts "6: Press 6 to exit current menu"
        @value = gets.chomp.to_i
        input
    end
    
    def input
        if @value == 1
            form = NewCarForm.new
            @inv.add_to(form.car)
            puts ""
        elsif @value == 2
            @inv.list
        elsif @value == 3
            search_menu
        elsif @value == 6
            puts ""
            puts "Have a nice day!"
            exit
        elsif @value == 4
            @inv.remove
        elsif @value == 5
            @inv.sell
        else 
            puts "Invalid input"
        end
            start
        end

    def search_menu
        puts ""
        puts "What would you like to search by."
        puts ""
        puts "1.Color"
        puts ""
        puts "2.Make"
        puts ""
        puts "3.Model"
        puts ""
        puts "4.Year"
        puts ""
        puts "5.Milage"
        puts ""
        puts "6.Price"
        @value = gets.chomp.to_i
        sub_search
    end
    
    def sub_search
        if @value == 1
            @inv.list_search_color
        elsif @value == 2
            @inv.list_search_make
        elsif @value == 3
            @inv.list_search_model
        elsif @value == 4
            @inv.list_search_year
        elsif @value == 5
            @inv.list_search_milage
        elsif @value == 6
            @inv.list_search_price
        else @value == 7
            puts "Invalid Input"
        end
            start
    end 
end