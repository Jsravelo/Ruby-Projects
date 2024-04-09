def caesar_cipher(passphrase, shift_factor)

    cipher = passphrase.split('').map do |character|

        if character.ord.between?(65, 90)  
            (character.ord - 65 + shift_factor) % 26 + 65
        elsif character.ord.between?(97, 122)  
            (character.ord - 97 + shift_factor) % 26 + 97
        else
            character
        end
    end

    encoded = cipher.map { |number| number.chr } 

    encoded.join


end

puts caesar_cipher("What a string!", 5)