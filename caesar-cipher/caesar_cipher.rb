def caesar_cipher(word, shift)
  letters = word.split('')
  temp = []
  final_word = ''

  letters.each do |l|
    if l.ord.between?(65, 90)
      if l.ord + shift > 90
        temp.push((l.ord + shift) - 26)
      else
        temp.push(l.ord + shift)
      end
    elsif l.ord.between?(97, 122)
      if l.ord + shift > 122
        temp.push((l.ord + shift) - 26)
      else
        temp.push(l.ord + shift)
      end
    else
      temp.push(l.ord)
    end
  end

  temp.each do |l|
    final_word += l.chr
  end

  puts final_word
end

print 'Enter a phrase you wish to encrypt: '
word = gets

print 'Enter the shift you wish to apply: '
shift = gets.to_i

caesar_cipher(word, shift)
