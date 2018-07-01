def caesar_cipher(string, shift)

    # Splitting the string into an array
    string_array = string.split("")

    # Mapping through
    string_array.map do | character |
        chr_num = character.ord

        # 65 - 90 is Decimal system number for Capital letters
        # 97 - 122 is Decimal system number for Small letters

        if ((chr_num >= 65 && chr_num <= 90) || (chr_num >= 97 && chr_num <= 122))

            # Cipher
            shifted_chr_num = chr_num + shift

            # Check if the cipher is no longer an Alphabeth
            if ((shifted_chr_num >= 91 &&  shifted_chr_num <= 96) || (shifted_chr_num > 122))
                shifted_chr_num = shifted_chr_num - 26
            end
        else
            # If it is not an Alphabeth
            shifted_chr_num = character
        end
        # Covert from Decimal system number to character
        shifted_chr_num.chr
    end
    .join
end

def ceasar_decipher(string, shift)

    # Splitting the string into an array
    string_array = string.split("")

    # Mapping through
    string_array.map do | character |
        chr_num = character.ord

        # 65 - 90 is Decimal system number for Capital letters
        # 97 - 122 is Decimal system number for Small letters

        if ((chr_num >= 65 && chr_num <= 90) || (chr_num >= 97 && chr_num <= 122))

            # Cipher
            shifted_chr_num = chr_num - shift
            
            # Check if the cipher is no longer an Alphabeth
            if ((shifted_chr_num < 65) || (shifted_chr_num >= 91 && shifted_chr_num <= 96))
                shifted_chr_num = shifted_chr_num + 26
            end
        else
            # If it is not an Alphabeth
            shifted_chr_num = character
        end
        # Convert from Decimal system number to character
        shifted_chr_num.chr

    end
    .join
end


# p output = caesar_cipher("Ruby is fun", 3)

# p ceasar_decipher(output, 3)