defmodule BasicMath do
    
    def run do
        num1 = get_valid_number("first")
        num2 = get_valid_number("second")
        IO.puts "#{num1} + #{num2} = #{sum(num1,num2)}\n"
        <> "#{num1} - #{num2} = #{difference(num1,num2)}\n"
        <> "#{num1} * #{num2} = #{product(num1,num2)}\n"
        <> "#{num1} / #{num2} = #{quotient(num1,num2)}"
    end

    def get_valid_number(position) do
        input_string = String.trim(IO.gets("What is the #{position} number? "))
        if is_numeric_and_positive(input_string) do elem(Integer.parse(input_string), 0)
        else get_valid_number(position) end
    end
    
    def is_numeric_and_positive(input_string) do
        case Integer.parse(input_string) do
            {num, ""} -> num >= 0
            _          -> false
        end
    end

    def sum(num1, num2) do
        num1 + num2
    end

    def difference(num1, num2) do
        num1 - num2
    end

    def product(num1, num2) do
        num1 * num2
    end
    
    def quotient(num1, num2) do
        if num2 == 0 do "undefined"
        else Float.round(num1 / num2,2) end
    end

end