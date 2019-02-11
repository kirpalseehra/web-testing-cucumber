Before do
  @users = ['Dave', 'Gill', 'Jon']
end

After do
  p "I'm an after hook and I have run"
end

Before('@test2') do
 print "this is specific output for test 2"
end