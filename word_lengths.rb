=begin 
Write a method word_lengths that takes in a sentence string and 
returns a hash where every key is a word of the sentence, and 
its' corresponding value is the length of that word.
=end
def word_lengths(sent)
    words = sent.split(" ")
    hash = {}
    words.each do |word|
        hash[word] = word.length   
    end
    return hash
end
puts word_lengths("this is fun") 
#=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") 
#=> {"When"=>4, "in"=>2, "doubt,"=>6,"leave"=>5, "it"=>2, "out"=>3}