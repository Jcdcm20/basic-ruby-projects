# frozen_string_literal: true

def caesar_cipher(phrase, shift)
  encrypted = ''
  phrase.chars.each do |letter|
    encrypted += if letter.ord.between?(65, 90) || letter.ord.between?(97, 122)
                   if letter.ord + shift <= 90 || letter.ord + shift <= 122
                     (letter.ord + shift).chr
                   else
                     (letter.ord + shift - 26).chr
                   end
                 else
                   letter
                 end
  end
  encrypted
end

print 'Enter a phrase you wish to encrypt: '
word = gets.chomp

print 'Enter the shift you wish to apply: '
shift = gets.to_i

puts caesar_cipher(word, shift)
