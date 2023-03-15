input_string = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.".downcase

input_string.each_char do |c|
  if not (c.match?(/^[[:alpha:]]$/) || c=="'")
    input_string[c]=" "
  end
end

split = input_string.split(" ")

number = Hash.new

split.each { |word| number.key?(word) ? number[word]+=1 : number[word] = 1 }

number = number.sort_by {|k, v| [-v, k]}.to_h

answer = number.keys.first(3)

puts answer
