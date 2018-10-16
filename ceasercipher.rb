def ceasercipher(letter, rot)
  i = 0
  while i < letter.size
    if letter[i].ord >= 65 && letter[i].ord <= 90
      rot.times do 
        if letter[i].ord == 90
          letter[i] = 'A'
        else
          letter[i] = (letter[i].ord + 1).chr
        end
    end
    i += 1
    elsif letter[i].ord >= 97 && letter[i].ord <= 122
      rot.times do
      if letter[i].ord == 122
        letter[i] = 'a'
      else
        letter[i] = (letter[i].ord + 1).chr
      end
    end
    i += 1
    else
      i += 1
    end
  end
  puts letter
end

  puts 'Enter your message you want to be encrypted: '
  string = gets.chomp
  puts 'Enter now the rotation: '
  rot = gets.chomp.to_i

ceasercipher(string, rot)
