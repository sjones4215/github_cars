
class NewCarForm
    attr_reader :car
    def initialize
        @car = Car.new
        @car.model = ask_question("make")
        @car.model = ask_question("model")
        @car.year = ask_question("year")
        @car.price = ask_question("price")
        @car.milage = ask_question("milage")
    end

    def ask_question(value)
        puts ""
        puts "What is the #{value} of the car?"
        gets.chomp
    end
    def depreciation
        puts ""
        puts "your car has deprciated #{@car.price.to_i / 2} dollars"
    end
end

class Car
    attr_accessor :make, :model, :year, :price, :milage
    def initialize
    end
        
    def to_s
        puts ""
        "#{@year},#{@make},#{@model},#{@color}, at approximately $#{@price}, the milage is #{@milage}"
    end
end

form = NewCarForm.new
puts form.car
form.depreciation