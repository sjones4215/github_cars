
class NewCarForm
    attr_reader :car
    def initialize
        @car = Car.new
        @car.make = ask_question("make")
        @car.model = ask_question("model")
        @car.year = ask_question("year")
        @car.price = ask_question("price")
        @car.milage = ask_question("milage")
        @car.color = ask_question("color")
    end

    def ask_question(value)
        puts ""
        puts "What is the #{value} of the car?"
        gets.chomp
    end
    def depreciation
        puts ""
        puts "your car has deprciated #{@car.price.to_i / 2} dollars"
        puts "leaving the value at #{car.price}"
    end
end

class Car
    attr_accessor :make, :model, :year, :price, :milage, :color
    def initialize
    end
        
    def to_s
        puts ""
        "#{@year},#{@make},#{@model},#{@color}, at approximately $#{@price}, the milage is #{@milage}"
    end
end

class Car_Inv
    def initialize(name, current_i = [])
        @name = name
        @current_i = current_i
    end
    
    def add_to(value)
        @current_i.push(value)
    end

    def take_out(value)
        @current_i.pop(value)
    end

    def list_inv
            count = 1
        @current_i.each do |car|
            puts "#{count}: #{car}"
            count += 1    
        end
    end
    def list_search
        puts ""
        puts "What color car are you looking for ?"
        color = gets.chomp
        selected_cars = @current_i.select do |c|
        c.color.upcase == color
        end
        puts "here are all of the cars with #{color}"
        selected_cars.each do |c|
            puts c 
        end
    end    
end

car1 = NewCarForm.new
car1.car
car2 = NewCarForm.new
car2.car

car_inv1 = Car_Inv.new("Crazy Bobs")

car_inv1.add_to(car1.car)
car_inv1.add_to(car2.car)
car_inv1.list_inv
car_inv1.list_search
