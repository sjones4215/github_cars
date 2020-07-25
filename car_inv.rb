
require_relative 'menu'
require_relative 'car'

class Car_Inv
    attr_accessor :current_i, :user_input
    def initialize(current_i = [])
        @current_i = current_i
    end
    
    def add_to(value)
        @current_i.push(value)
    end

    def list
        count = 1
        puts ""
        puts "Here is a list of your current inventory."
        @current_i.sort.each do |car|
        puts "#{count}: #{car}"
        count += 1    
        end
    end
       
    def list_search_color
        puts ""
        puts "What color car are you looking for ?"
        color = gets.chomp
        selected_cars = @current_i.select {|c| c.color.upcase == color.upcase}
        puts "here are all of the cars with a color of #{color}"
        selected_cars.each do |c|
        puts c 
        end
    end
        
    def list_search_make
        puts ""
        puts "What make car are you looking for ?"
        make = gets.chomp
        selected_cars = @current_i.select {|c| c.make.upcase == make.upcase}
        puts "here are all of the cars with a make of #{make}"
        selected_cars.each do |c|
        puts c 
        end
    end    
     
   
    def list_search_model
        puts ""
        puts "What color car are you looking for ?"
        model = gets.chomp
        selected_cars = @current_i.model {|c| c.model.upcase == model.upcase}
        puts "here are all of the cars with model of #{model}"
        selected_cars.each do |c|
        puts c 
        end
    end    


    
    def list_search_year
        puts ""
        puts "What year car are you looking for ?"
        year = gets.chomp
        selected_cars = @current_i.select {|c| c.year == year}
        puts "here are all of the cars with a year of #{year}"
        selected_cars.each do |c|
        puts c 
        end
    end    

    def list_search_milage
        puts ""
        puts "What milage car are you looking for ?"
        milage = gets.chomp
        selected_cars = @current_i.select {|c| c.milage.upcase == milage.upcase}
        puts "here are all of the cars with a milage of #{milage}"
        selected_cars.each do |c|
        puts c 
        end
    end    
        
        def list_search_price
        puts ""
        puts "What color car are you looking for ?"
        price = gets.chomp
        selected_cars = @current_i.select {|c| c.price.upcase == price.upcase}
        puts "here are all of the cars worth #{price}"
        selected_cars.each do |c|
        puts c 
        end
    end 
    
    def remove
        puts "Select a car to remove."
        puts "enter the corresponding number."
        list
        puts ""
        remove_car
    end

    def remove_car
        user_input = gets.chomp.to_i
        @current_i.delete_at(user_input - 1)
        list
    end

    def sell
        puts "select a car to sell"
        puts "enter the corresponding number."
        list
        puts"we are working on this feature"
    end
end