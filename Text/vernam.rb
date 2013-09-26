# Generates a random key with a specified length
def keygen(length)
  key = ""
  (1..length).each do
    key += Random.rand(0..128).chr
  end
  key
end

def encrypt(message, random_key)
  cipher = ""

  (0..message.length-1).each { |e|
    message_char = ""
    key_char = ""
    message[e].each_byte { |byte| message_char = byte }
    random_key[e].each_byte { |byte| key_char = byte }

    cipher += ((message_char ^ key_char) % 128).chr
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

    message += ((cipher_char ^ key_char) % 128).chr
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