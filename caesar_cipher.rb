def caesar_cipher(str, shift)
  result = ""

  str.each_char { |ch| result << get_new_char(ch, shift) }

  result
end

def get_new_char(ch, shift)
  shift.times do
    if ch == "Z"
      ch = "A"
    elsif ch == "z"
      ch = "a"
    elsif ch =~ /[A-Ya-y]/
      ch.succ!
    end
  end

  ch
end

puts caesar_cipher("What a string!", 5)
