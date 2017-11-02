ExUnit.start()

defmodule AreaCalculatorTest do
    use ExUnit.Case
    
    test "should_correctly_identify_numeric_input" do
        assert AreaCalculator.is_numeric_and_positive("33") == true
    end

    test "should_reject_nonnumeric_input" do
        assert AreaCalculator.is_numeric_and_positive("xyz") == false
    end

    test "should_reject_negative_numbers" do
        assert AreaCalculator.is_numeric_and_positive("-33") == false
    end

    test "should_calculate_area_in_square_feet_correctly_when_provided_measurements_in_feet" do
        assert AreaCalculator.calculate_area(10,20,"feet","feet") == 200
    end

    test "should_calculate_area_in_square_meters_correctly_when_provided_measurements_in_feet" do
        assert AreaCalculator.calculate_area(10,20,"feet","meters") == 18.581
    end

    test "should_calculate_area_in_square_feet_correctly_when_provided_measurements_in_meters" do
        assert AreaCalculator.calculate_area(10,20,"meters","feet") == 2152.782
    end

    test "should_calculate_area_in_square_meters_correctly_when_provided_measurements_in_meters" do
        assert AreaCalculator.calculate_area(10,20,"feet","feet") == 200
    end
end