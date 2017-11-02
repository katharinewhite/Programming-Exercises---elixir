defmodule BasicMath do
   
    def run do
        num1 = InputStream.get_positive_number("What is the first number? ")
        num2 = InputStream.get_positive_number("What is the second number? ")
        IO.puts "#{num1} + #{num2} = #{sum(num1,num2)}\n"
        <> "#{num1} - #{num2} = #{difference(num1,num2)}\n"
        <> "#{num1} * #{num2} = #{product(num1,num2)}\n"
        <> "#{num1} / #{num2} = #{quotient(num1,num2)}"
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