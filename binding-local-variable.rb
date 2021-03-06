puts "\n#{RUBY_DESCRIPTION}\n\nDirect local_variable_set"

[:$0, :$~, :$_].each do |v|
  begin
    binding.local_variable_set(v, '')
  rescue => e
    puts "#{v}  #{e.class}"
  end
end

puts "\nLmabdas local_variable_defined?"
STDOUT.flush

[:$0, :$~, :$_].each do |v|
  a = -> (bind) do
    x = bind.local_variable_defined? v
    puts "#{v} defined? #{x}"
  end
  begin
    a[binding]
  rescue => e
    puts "#{v}  #{e.class}"
  end
end

puts "\nLambdas local_variable_get"
STDOUT.flush

[:$0, :$~, :$_].each do |v|
  a = -> (bind) do
    bind.local_variable_get(v)
  end
  begin
    a[binding]
  rescue => e
    puts "#{v}  #{e.class}"
  end
end

puts "\nLambdas local_variable_set"
STDOUT.flush

[:$0, :$~, :$_].each do |v|
  a = -> (bind) do
    bind.local_variable_set(v, '')
  end
  begin
    a[binding]
  rescue => e
    puts "#{v}  #{e.class}"
    STDOUT.flush
  end
end
