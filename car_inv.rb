
class Car_Inv
    attr_accessor :current_i
    def initialize(current_i = [])
        @current_i = current_i
    end
    
    def add_to(value)
        @current_i.push(value)
    end

    def take_out(value)
        @current_i.pop(value)
    end

    def list
        count = 1
        @current_i.each do |car|
        puts "#{count}: #{car}"
        count += 1    
        end
    end
        def list_search_color
        puts ""
        puts "What color car are you looking for ?"
        color = gets.chomp
        selected_cars = @inv.select {|c| c.color.upcase == color.upcase}
        puts "here are all of the cars with #{color}"
        selected_cars.each do |c|
        puts c 
        end
    end
        
        def list_search_make
        puts ""
        puts "What make car are you looking for ?"
        make = gets.chomp
        selected_cars = @inv.select {|c| c.make.upcase == make.upcase}
        puts "here are all of the cars with #{make}"
        selected_cars.each do |c|
        puts c 
        end
    end    
     
   
        def list_search_model
        puts ""
        puts "What color car are you looking for ?"
        model = gets.chomp
        selected_cars = @inv.model {|c| c.model.upcase == model.upcase}
        puts "here are all of the cars with #{model}"
        selected_cars.each do |c|
        puts c 
        end
    end    


    
        def list_search_year
        puts ""
        puts "What year car are you looking for ?"
        year = gets.chomp
        selected_cars = @inv.select {|c| c.year == year}
        puts "here are all of the cars with #{year}"
        selected_cars.each do |c|
        puts c 
        end
    end    

        def list_search_milage
        puts ""
        puts "What milage car are you looking for ?"
        milage = gets.chomp
        selected_cars = @inv.select {|c| c.milage.upcase == milage.upcase}
        puts "here are all of the cars with #{milage}"
        selected_cars.each do |c|
        puts c 
        end
    end    
        
        def list_search_price
            puts ""
            puts "What color car are you looking for ?"
            price = gets.chomp
            selected_cars = @inv.select {|c| c.price.upcase == price.upcase}
            puts "here are all of the cars with #{price}"
            selected_cars.each do |c|
            puts c 
        end
    end   
  end