defmodule AreaCalculator do
    @feet_squared_to_meters_squared_conversion_factor 0.09290304

    def calculate do
        units = get_units()
        length = get_valid_number("What is the length of the room in #{units}? ")
        width = get_valid_number("What is the width of the room in #{units}? ")
        areaInFeet = calculate_area(length, width, units, "feet")
        areaInMeters = calculate_area(length, width, units, "meters")
        IO.puts "You entered dimensions of #{length} #{units} by #{width} #{units}.\n"
        <> "The area is\n"
        <> "#{areaInFeet} square feet\n"
        <> "#{areaInMeters} square meters"
    end

    def get_units do
        units = String.trim(IO.gets("What units would you like to use? Please enter meters or feet. "))
        if (units == "feet" or units == "meters") do 
            units
        else
            get_units()
        end
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

    def calculate_area(length, width, unitsProvided, unitsRequired) do
        case {unitsProvided, unitsRequired} do
            {units,units} -> length * width
            {"feet","meters"} -> Float.round(length * width * @feet_squared_to_meters_squared_conversion_factor,3)
            {"meters","feet"} -> Float.round(length * width / @feet_squared_to_meters_squared_conversion_factor,3)
        end
    end
end