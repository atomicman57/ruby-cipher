# ruby-cipher
## Caesar Cipher

The **Caesar Cipher**, also known as a shift cipher, is one of the oldest and simplest forms of encrypting a message. It is a type of substitution cipher where each letter in the original message (which in cryptography is called the plaintext) is replaced with a letter corresponding to a certain number of letters shifted up or down in the alphabet. 

For each letter of the alphabet, you would take its position in the alphabet, say 3 for the letter 'C', and shift it by the key number. If we had a key of +3, that 'C' would be shifted down to an 'F' - and that same process would be applied to every letter in the plaintext.

In this way, a message that initially was quite readable, ends up in a form that cannot be understood at a simple glance. 

![image](https://learncryptography.com/assets/content/images/caesar_cipher.jpg)

For example, here's the Caesar Cipher encryption of a full message, using a left shift of 3. 

`Plaintext:  
THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG  

Ciphertext:  
QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD`