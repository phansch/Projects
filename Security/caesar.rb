# Caesar chipher for the ASCII alphabet

def encrypt(plain, offset)
  cipher = ""

  plain.each_byte do |char|
    cipher += ((char + offset) % 128).chr
  end
  cipher
end

def decrypt(cipher, offset)
  plain = ""

  cipher.each_byte do |char|
    plain += ((char - offset) % 128).chr
  end
  plain
end

def main
  system('clear')
  puts "CAESAR CIPHER"
  puts "Menu: \t q - quit
              \t e - encrypt
              \t d - decrypt"

  loop do
    print ":"
    choice = gets.chomp

    case choice
    when 'e'
      puts "Enter a text you want to encrypt: "
      plain = gets.chomp
      puts "Enter a key (0 - 127) to encrypt the plaintext: "
      key = gets.chomp.to_i

      cipher = encrypt(plain, key)

      puts "Your encrypted text: #{cipher}"
      puts "----"
    when 'd'
      puts "Enter a cipher you want to decrypt: "
      cipher = gets.chomp
      puts "Enter a key (0 - 127) to decrypt the cipher: "
      key = gets.chomp.to_i

      plain = decrypt(cipher, key)
      
      puts "Your plaintext is: #{plain}"
      puts "----"
    when 'q'
      break
    end

  end
end

main