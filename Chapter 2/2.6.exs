currentAge = elem(Integer.parse(IO.gets("What is your current age? ")), 0)
retirementAge = elem(Integer.parse(IO.gets("At what age would you like to retire? ")), 0)
currentYear = DateTime.utc_now.year
if retirementAge <= currentAge do
    IO.puts "You can already retire!"
    else IO.puts "You have #{retirementAge - currentAge} years left until you can retire.\n"
    <> "It's #{currentYear}, so you can retire in #{currentYear + retirementAge - currentAge}."
end
