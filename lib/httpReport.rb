def start_program
  STDOUT.puts "Please type in a url"
  input = STDIN.gets.chomp
  @input_array = input.split("\\n")
end