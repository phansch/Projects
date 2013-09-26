# Generates a key with a specified length
def keygen(length)
  #TODO: Implement random key generator

  key = ""
  (1..length).each { |e|
    #key += Math.rand(0, 128).chr
    key += "5" #randomly chosen by dice
  }
  return key
end

def encrypt(message, random_key)
  cipher = ""

  (0..message.length-1).each { |e|
    message_char = ""
    key_char = ""
    message[e].each_byte { |byte| message_char = byte }
    random_key[e].each_byte { |byte| key_char = byte }

    cipher += (message_char ^ key_char).chr
  }

  cipher
end

def decrypt(cipher, random_key)
  message = ""

  (0..cipher.length-1).each { |e|
    cipher_char = ""
    key_char = ""
    cipher[e].each_byte { |byte| cipher_char = byte }
    random_key[e].each_byte { |byte| key_char = byte }

    #puts (cipher_char ^ key_char)
    message += (cipher_char ^ key_char).chr
  }
  message
end

message = "Hello World."
key = keygen(message.length)

cipher = encrypt(message, key)
orig_message = decrypt(cipher, key)

puts "Original message: #{message}"
puts "Cipher: #{cipher}"
puts "Decrypted message: #{orig_message}"