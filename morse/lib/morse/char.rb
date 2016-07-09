module Morse
  class Char
    MAP = {
      'A' => '.-',    'B' => '-...',   'C' => '-.-.',  'D' => '-..',   'E' => '.',
      'F' => '..-.',  'G' => '--.',    'H' => '....',  'I' => '..',    'J' => '.---',
      'K' => '-.-',   'L' => '.-..',   'M' => '--',    'N' => '-.',    'O' => '---',
      'P' => '.--.',  'Q' => '--.-',   'R' => '.-.',   'S' => '...',   'T' => '-',
      'U' => '..-',   'V' => '...-',   'W' => '.--',   'X' => '-..-',  'Y' => '-.--',
      'Z' => '--..',  '0' => '-----',  '1' => '.----', '2' => '..---', '3' => '...--',
      '4' => '....-', '5' => '.....',  '6' => '-....', '7' => '--...', '8' => '---..',
      '9' => '----.', ',' => '--..--',
    }

    def initialize(raw)
      @raw = raw
    end

    def upcased
      @upcased ||= @raw.upcase
    end

    def encoded
      @encoded ||= MAP[upcased] || raise(InvalidChar, "#{@raw} char is invalid")
    end

    def obfuscated
      @obfuscated ||= encoded.each_char
        .chunk { |el| el == '.' }
        .map { |is_dot, arr| is_dot ? arr.size : (64 + arr.size).chr }
        .join
    end
  end
end
