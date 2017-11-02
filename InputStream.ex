defmodule InputStream do
    def get_positive_number(prompt) do
        input_string = String.trim(IO.gets(prompt))
        if is_numeric_and_positive(input_string) do elem(Integer.parse(input_string), 0)
        else get_positive_number(prompt) end
    end
    
    def is_numeric_and_positive(input_string) do
        case Integer.parse(input_string) do
            {num, ""} -> num >= 0
            _          -> false
        end
    end
end