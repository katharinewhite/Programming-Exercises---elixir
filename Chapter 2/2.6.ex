defmodule RetirementCalculator do
    def run do
        current_age = get_valid_number("What is your current age? ")
        retirement_age = get_valid_number("At what age would you like to retire? ")
        IO.puts calculate_message(current_age, retirement_age)
    end

    def get_valid_number(prompt) do
        inputString = String.trim(IO.gets(prompt))
        if is_numeric_and_positive(inputString) do
            elem(Integer.parse(inputString), 0)
        else 
            get_valid_number(prompt) 
        end
    end
    
    def is_numeric_and_positive(str) do
        case Integer.parse(str) do
            {num, ""} -> num >= 0
            _          -> false
        end
    end

    def calculate_message(current_age, retirement_age) when current_age < retirement_age do
        current_year = DateTime.utc_now.year
        "You have #{retirement_age - current_age} years left until you can retire.\n"
        <> "It's #{current_year}, so you can retire in #{current_year + retirement_age - current_age}."
    end

    def calculate_message(current_age, retirement_age) when current_age >= retirement_age do
        "You can already retire!"
    end
end