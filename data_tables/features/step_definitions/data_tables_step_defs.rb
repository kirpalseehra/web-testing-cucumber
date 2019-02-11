Given("I have a data table") do |table|
  @table = table.raw
  puts @table
end

Then("I am able to print out each name and age to the command line") do
  @table.each do |data|
    puts "Users name is #{data[0]} and age is #{data[1]}"
    # do the if statement to target just dave 
    if data[0] == 'Dave' 
      expect(data[1].to_i).to be < 24
    end
  end
end