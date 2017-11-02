defmodule CharacterCounter do
    def get_valid_input_string do
        input_string = String.trim(IO.gets("Please enter an input string. "))
        if input_string == "" do 
            get_valid_input_string()
        else 
            input_string 
        end
    end
    
    def calculate do
        input_string = get_valid_input_string()
        IO.puts "#{input_string} has #{String.length(input_string)} characters."
    end
end