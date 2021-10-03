def start_program
  STDOUT.puts "Please type in a url"
  input = STDIN.gets.chomp
  @input_array = input.split("\\n")
end

def invalid_url_chars(website)
  @invalid_url_chars = false
  valid_characters_array = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~:/?#[]@!$&'()*+,;=".split("")
  website.split("").each do |char|
    @invalid_url_chars = true if !valid_characters_array.include?(char)
  end
  @invalid_url_chars
end