defmodule Quoter do
    def quote do
        quotation = String.trim(IO.gets("What is the quote? "))
        speaker = String.trim(IO.gets("Who said it? "))
        IO.puts speaker <> " says, \"" <> quotation <> "\""
    end
end