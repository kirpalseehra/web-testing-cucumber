Given("I have more than one data row in my example table") do

end

Given(/^it includes (.*) as a string and (.*) as an Integer$/) do |name, age|
  # p 'running test -----------------
  age = age.to_i
  expect(name).to be_kind_of(String)
  expect(age).to be_kind_of(Integer)
end

Then(/^I can validate the (.*) & (.*) are correct$/) do |name, age|
  age = age.to_i
  expect(name).to eq('Dave').or eq('Kirpal').or eq('Emem').or eq('Tim').or eq('Nithesh')
  expect(age).to eq(23).or eq(24).or eq(21).or eq(22).or eq(34)
end