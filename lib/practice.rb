def score(word)
  score_chart =
  {
    1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
    2 => ["D", "G"],
    3 => ["B", "C", "M", "P"],
    4 => ["F", "H", "V", "W", "Y"],
    5 => ["K"],
    8 => ["J", "X"],
    10 => ["Q", "Z"]
  }
  total = 0
  for i in 0..word.length
    score_chart.each do |number, letters|
      letters.find do |l|
        if l == word[i]
          total += number
        end
      end
    end
  end
  if word.length == 7
    return total + 50
  else
    return total
  end
end

puts score("BUBBLES")


 # word = "cat"
 # count = 0
 # number = 5
 #
 # if word.length == 3
 #   count += number + 5
 # else
 #   count +=1
 # end
 # puts count
