def caesar_cipher(word, shift)
    letters = word.split('')
    temp = []
    final_word = ''

    letters.each do |l|
        if l.ord == 32
            temp.push(l.ord)
        else
            temp.push(l.ord + shift)
        end
    end
    
    temp.each do |l|
        final_word += l.chr
    end

    puts final_word
end

print "Enter a phrase you wish to encrypt: "
word = gets

print "Enter the shift you wish to apply: "
shift = gets.to_i

caesar_cipher(word, shift)