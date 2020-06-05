# Write your code here.
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each do |name|
      current_line << " #{katz_deli.index(name) + 1}. #{name}"
## {katz_deli.index(name) + 1} will produce the wrong result if the same name shows up twice
##in katz_deli. See below for alternative solution.
    end
    puts current_line
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
  ## {katz_deli.length} could be substituted by {katz_deli.index(name) + 1}, but error will arise
  ## if the katz_deli contains the same name earlier in the array
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end

=begin
def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    place = 1
    katz_deli.each do |name|
      current_line << " #{place}. #{name}"
      place += 1
    end
    puts current_line
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end
=end
