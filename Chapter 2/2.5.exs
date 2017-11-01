defmodule InputStream do
    
    def getValidNumber(position) do
        inputString = String.trim(IO.gets("What is the #{position} number? "))
        if is_numeric_and_positive(inputString) do elem(Integer.parse(inputString), 0)
        else getValidNumber(position) end
    end
    
    def is_numeric_and_positive(str) do
        case Integer.parse(str) do
            {num, ""} -> num >= 0
            _          -> false
        end
    end


end

defmodule Math do
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

num1 = InputStream.getValidNumber("first")
num2 = InputStream.getValidNumber("second")
IO.puts "#{num1} + #{num2} = #{Math.sum(num1,num2)}\n"
<> "#{num1} - #{num2} = #{Math.difference(num1,num2)}\n"
<> "#{num1} * #{num2} = #{Math.product(num1,num2)}\n"
<> "#{num1} / #{num2} = #{Math.quotient(num1,num2)}"