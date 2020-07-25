class Car
    attr_accessor :make, :model, :year, :price, :milage, :color, :sold
    def initialize(sold = false)
    end
    
    def to_s
        puts ""
        "#{@year},#{@make},#{@model},#{@color}, at approximately $#{@price}, the milage is #{@milage} it is currently #{@sold}"
    end
    
    def <=>(other_car)
        other_car.price.to_i <=> @price.to_i
    end
end