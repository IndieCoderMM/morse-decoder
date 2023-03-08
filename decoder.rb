MORSE_TABLE = { '.-' => 'a', '-...' => 'b',
                '-.-.' => 'c', '-..' => 'd', '.' => 'e',
                '..-.' => 'f', '--.' => 'g', '....' => 'h',
                '..' => 'i', '.---' => 'j', '-.-' => 'k',
                '.-..' => 'l', '--' => 'm', '-.' => 'n', '---' => 'o',
                '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's',
                '-' => 't', '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x',
                '-.--' => 'y', '--..' => 'z' }.freeze

def decode_char(char)
  MORSE_TABLE[char]
end

def decode_word(word)
  letters = word.split
  decoded = ''
  letters.each { |c| decoded += decode_char(c) }
  decoded
end

def decode(message)
  sentence = ''
  words_array = message.split(/   /)
  words_array.each do |word|
    sentence += decode_word(word)
    sentence += ' '
  end
  sentence
end

# puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
