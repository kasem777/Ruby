=begin 
    Write a method hand_score that takes in a string representing a hand of cards 
    and returns it's total score. You can assume the letters in the string are only 
    A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. 
    The letters of the input string not necessarily uppercase.
=end


   # grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
    #puts grades["Jane Doe"] # => 10


def hand_score(hand)
    cards = {"A" => 4, "K" => 3, "Q" => 2, "J" => 1}
    score = 0

    hand.each_char do |char|
        score += cards[char.upcase]
    end
    return score
end
puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9


