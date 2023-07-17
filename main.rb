# ask user for text they want to encode
puts("Type a message you want to encode")
# store user input for future use
message_to_encode = gets.chomp()
# now the same for the cipher key
# save the cipher key as an integer
puts("Type a number used to encode your message")
cipher_key = gets.chomp().to_i
# TODO:
# encode the message
# split message_to_encode into an array
message_array = message_to_encode.split(//)
# create an array of letters from a-z
alphabet = [*"a"..."z"]
# create an empty array for the encoded message
encoded_message_array = []
# loop through the message array
for character in message_array
    # mark whether a letter is uppercase
    character_is_uppercase = character == character.upcase
    # convert letter to lowercase so we don't have to make two alphabet arrays
    character = character.downcase
    # if character isn't in the alphabet array (whitespace, comma, etc) then just add the character to the encoded array
    if alphabet.include?(character) == false
        encoded_message_array.push(character)
    # else, add the index of the character in the alphabet array to the cipher key number
    else
        new_character_index = cipher_key + alphabet.find_index(character)
        # adjust this sum so that it's between 0 and 25
        while new_character_index > 25 || new_character_index < 0
            new_character_index -= 26 if new_character_index > 25
            new_character_index += 26 if new_character_index < 0
        end
        # return the letter in the alphabet array with the same index as this sum
        new_character = alphabet[new_character_index]
        # convert new_character to uppercase if character_is_uppercase
        new_character = new_character.upcase if character_is_uppercase
        # add this new character to the encoded message array
        encoded_message_array.push(new_character)
    end
end
# join the encoded message array into a string
encoded_message = encoded_message_array.join
# return the encoded message
puts("Here is your encoded message:")
puts(encoded_message)