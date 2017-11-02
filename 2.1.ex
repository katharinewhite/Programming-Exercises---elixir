defmodule Greeter do
    def say_hello do
        IO.puts "Hello, #{String.trim(IO.gets("What is your name? "))}, nice to meet you!"
    end
end

