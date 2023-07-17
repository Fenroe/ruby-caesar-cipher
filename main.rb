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
# create an array of letters from a-z
# create an empty array for the encoded message
# loop through the message array
# mark whether a letter is uppercase
# convert letter to lowercase so we don't have to make two alphabet arrays
# if character isn't in the alphabet array (whitespace, comma, etc) then just add the character to the encoded array
# else, add the index of the character in the alphabet array to the cipher key number
# adjust this sum so that it's between 0 and 25
# return the letter in the alphabet array with the same index as this sum
# join the encoded message array into a string
# return the encoded message
encoded_message = "This is an encoded message"
puts("Here is your encoded message:")
puts(encoded_message)