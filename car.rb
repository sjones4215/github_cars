class Car
    attr_accessor :make, :model, :year, :price, :milage, :color
    def initialize
    end
    
    def to_s
        puts ""
        "#{@year},#{@make},#{@model},#{@color}, at approximately $#{@price}, the milage is #{@milage}"
    end
end