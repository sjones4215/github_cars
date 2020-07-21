
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
end