defmodule InputStream do
    def getValidInputString do
        inputString = String.trim(IO.gets("Please enter an input string. "))
        if inputString == "" do getValidInputString()
        else inputString end
    end
end

inputString = InputStream.getValidInputString()
IO.puts "#{inputString} has #{String.length(inputString)} characters."