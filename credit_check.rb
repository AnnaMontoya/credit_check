card_number = "4929735477250543"

card_number.to_s.chars.map(&:to_i)

card_number = card_number.to_s.chars.map(&:to_i)

count = 0
card_number = card_number.reverse.map do |num|
  if count.odd?
    count += 1
      (num * 2)
    else
      count += 1
      num
    end
  end

def digit_sum(card_number)
  card_number.map do |card_digit|
    if card_digit > 9
       card_digit - 9
     else
       card_digit
    end
  end
end

card_number = digit_sum(card_number)

def card_sum(card_number)
  card_number.inject(0){|sum, digit| sum + digit }
end
card_number = card_sum(card_number)

 puts card_number.inspect

if card_number % 10 == 0
  puts "This is valid!"
else
  puts "This is not valid!"
end
