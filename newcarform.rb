require_relative 'car'

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
        @car.sold
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