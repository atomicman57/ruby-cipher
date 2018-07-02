def caesar_cipher(string, shift)

    string_array = string.split("")

    string_array.map do | character |
        chr_num = character.ord

        if ((chr_num >= 65 && chr_num <= 90) || (chr_num >= 97 && chr_num <= 122))

            shifted_chr_num = chr_num + shift

            if ((shifted_chr_num >= 91 &&  shifted_chr_num <= 96) || (shifted_chr_num > 122))
                shifted_chr_num = shifted_chr_num - 26
            end
        else
            shifted_chr_num = character
        end
        shifted_chr_num.chr
    end
    .join
end

def ceasar_decipher(string, shift)

    string_array = string.split("")

    string_array.map do | character |
        chr_num = character.ord

        if ((chr_num >= 65 && chr_num <= 90) || (chr_num >= 97 && chr_num <= 122))

            shifted_chr_num = chr_num - shift
            
            if ((shifted_chr_num < 65) || (shifted_chr_num >= 91 && shifted_chr_num <= 96))
                shifted_chr_num = shifted_chr_num + 26
            end
        else
            shifted_chr_num = character
        end
        shifted_chr_num.chr

    end
    .join
end


# p output = caesar_cipher("Ruby is fun", 3)

# p ceasar_decipher(output, 3)