ExUnit.start()

defmodule InputStreamTest do
    use ExUnit.Case

    test "should_correctly_identify_numeric_input" do
        assert InputStream.is_numeric_and_positive("33") == true
    end

    test "should_reject_nonnumeric_input" do
        assert InputStream.is_numeric_and_positive("xyz") == false
    end

    test "should_reject_negative_numbers" do
        assert InputStream.is_numeric_and_positive("-33") == false
    end

end