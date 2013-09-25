def encrypt(plain, key)
  cipherIndex = 0
  keyIndex = 0
  cipher = ""

  plain.each_byte do |plainchar|
    break if cipherIndex > plain.length-1 # we are done

    # TODO find inplace method for char.to_i
    keychar = ""
    key[keyIndex].each_byte { |byte| keychar = byte }

    cipher += (((plainchar + keychar) % 128)).chr
    #puts ((plainchar + keychar) % 128)

    cipherIndex += 1
    keyIndex += 1
    if keyIndex >= key.length
      keyIndex = 0
    end

  end
  puts cipher
end


def decrypt(cipher, key)
  plainIndex = 0
  keyIndex = 0
  plain = ""

  cipher.each_byte do |cipherchar|
    break if plainIndex > cipher.length-1 # we are done

    # TODO find inplace method for char.to_i
    keychar = ""
    key[keyIndex].each_byte { |byte| keychar = byte }
    plain += ((cipherchar - keychar) % 128).chr

    plainIndex += 1
    keyIndex += 1
    if keyIndex >= key.length
      keyIndex = 0
    end

  end
  plain
end

#puts "A".each_byte { |byte|  puts byte }

#encrypt("TREFF", "INFORMATIK")
#puts decrypt("^aLVY", "INFORMATIK")


puts encrypt("TREFF", "INFORMATIK")
puts decrypt(" ", "INFORMATIK")