# require 'pry-byebug'
class EncryptionEngine
ROT13 ={'a'=> 'n',
        'b' => 'o',
        'c' => 'p',
        'd' => 'q',
        'e' => 'r',
        'f' => 's',
        'g'=>'t',
        'h'=>'u',
        'i'=>'v',
        'j'=>'w',
        'k'=>'x',
        'l'=>'y',
        'm'=>'z'
}

# binding.pry
  def encrypt(text)
    i = text.length
    until i.zero? do
      if ('a'..'m').include?(text[i-1].downcase)
        text[i-1].upcase == text[i-1] ? text[i-1] = ROT13[text[i-1].downcase].upcase : text[i-1] = ROT13[text[i-1].downcase]
        i -= 1
      elsif ('n'..'z').include?(text[i-1].downcase)
        text[i-1].upcase == text[i-1] ? text[i-1] = ROT13.key(text[i-1].downcase).upcase : text[i-1]=ROT13.key(text[i-1].downcase)
        i -= 1
      else
        i -= 1
      end
    end
    text
  end
end
puts EncryptionEngine.new.encrypt('My Message')
