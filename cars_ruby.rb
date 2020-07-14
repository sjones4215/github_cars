def ask_question(value)
   puts"Enter information for #{value}"
   gets.chomp
end
def depriciation(value)
   value.to_f / 2
end
puts "#{ask_question("make").capitalize}, #{ask_question("model").capitalize}, esitimated at #{depriciation(ask_question("price")}"
