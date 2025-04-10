def caesar_cipher(input)
    # Define the alphabet and the shift value
    alphabet = ('a'..'z').to_a # Create an array of letters from 'a' to 'z'
    shift = 3 # Shift each value thrice.
    
    # Create a hash to map each letter to its shifted counterpart
    cipher = {}
    alphabet.each_with_index do |letter, index|
        cipher[letter] = alphabet[(index + shift) % alphabet.size]
    end
    
    # Convert the input string to lowercase and replace each letter using the cipher
    input.downcase.chars.map { |char| cipher[char] || char }.join
    end

puts "Enter a string to encrypt using Caesar cipher:"
input_string = gets.chomp
encrypted_string = caesar_cipher(input_string)
puts "Encrypted string: #{encrypted_string}"