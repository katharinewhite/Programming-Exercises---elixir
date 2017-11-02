ExUnit.start()

defmodule AreaCalculatorTest do
    use ExUnit.Case
    
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